import 'package:findsurf_app/bloc/checkPage.dart';
import 'package:findsurf_app/bloc/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class FSSelectedState extends StatefulWidget {
  @override
  _FSSelectedStateState createState() => _FSSelectedStateState();
}

class _FSSelectedStateState extends State<FSSelectedState> {
  List<String> listState = ["Espirito Santo", "Rio de Janeiro", "São Paulo"];

  @override
  Widget build(BuildContext context) {
    final CheckPageBloc bloc = Provider.of<CheckPageBloc>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(
            color: Color(0xFFE5E5E5),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: Colors.black.withOpacity(.2),
            )
          ]),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.pin_drop,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: DropdownButton(
              isExpanded: true,
              icon: SvgPicture.asset("assets/icons/dropdown.svg"),
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
          )
        ],
      ),
    );
  }
}
