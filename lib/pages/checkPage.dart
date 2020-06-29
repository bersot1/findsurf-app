import 'package:findsurf_app/bloc/checkPage.dart';
import 'package:findsurf_app/bloc/navigations/navigation.dart';
import 'package:findsurf_app/widgets/selectedCity.dart';
import 'package:findsurf_app/widgets/selectedState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/header.dart';
import '../widgets/productCard.dart';

class CheckPage extends StatefulWidget with NavigationStates {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  List<String> listState = ["Espirito Santo", "Rio de Janeiro", "São Paulo"];
  List<String> listCity = ["Vila Velha", "Vitoria", "Serra"];
  DateTime dateSelected = DateTime.now();

  _editConf(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        final CheckPageBloc bloc = Provider.of<CheckPageBloc>(context);
        return AlertDialog(
          title: Text("Editar filtro"),
          content: Column(
            children: [
              DropdownButton(
                isExpanded: true,
                underline: SizedBox(),
                value: bloc.stateSelected,
                items: listState.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    bloc.changeState(value);
                  });
                },
              ),
              DropdownButton(
                isExpanded: true,
                underline: SizedBox(),
                value: bloc.citySelected,
                items: listCity.map<DropdownMenuItem<String>>(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    bloc.changeCity(value);
                  });
                },
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () async {
                    final dtPick = await showDatePicker(
                        context: context,
                        initialDate: new DateTime.now(),
                        firstDate: new DateTime(2000),
                        lastDate: new DateTime(2100));

                    if (dtPick != null && dtPick != dateSelected) {
                      setState(() {
                        dateSelected = dtPick;
                        bloc.changeDate(dtPick);
                      });
                    }
                  },
                  child: Text(
                    "Data: " + bloc.dateSelected.toString().substring(0, 11),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Salvar"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final CheckPageBloc bloc = Provider.of<CheckPageBloc>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF008784),
      ),
      body: SafeArea(
        top: false,
        bottom: true,
        child: Column(
          children: [
            FSHeader(),
            Text(
              "Check dos Pico",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Container(
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(bloc.dateSelected.toString().substring(0, 11)),
                    Text(bloc.stateSelected),
                    Text(bloc.citySelected),
                    GestureDetector(
                      onTap: () {
                        _editConf(context);
                      },
                      child: Icon(Icons.edit),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
              thickness: 0.5,
              color: Colors.blue,
              indent: 32,
              endIndent: 32,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 50,
                      left: 20,
                      right: 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: FSProductCard(
                        path: "https://picsum.photos/200/300",
                        title: "Secret",
                        price: "",
                        status: "",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
