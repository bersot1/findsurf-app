import 'package:findsurf_app/bloc/homePage.dart';
import 'package:findsurf_app/widgets/categoryList.dart';
import 'package:findsurf_app/widgets/header.dart';
import 'package:findsurf_app/widgets/productCard.dart';
import 'package:findsurf_app/widgets/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final HomePageBloc bloc = Provider.of<HomePageBloc>(context);
    final HomePageBloc bloc = Provider.of<HomePageBloc>(context);
    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            FSHeader(),
            SizedBox(
              height: 25,
            ),
            FSSearchBar(),
            SizedBox(
              height: 25,
            ),
            CategoryList(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bloc.categorySelected,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    bloc.citySelected,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
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
                            borderRadius: BorderRadius.circular(20)),
                        child: FSProductCard(
                            path: "https://picsum.photos/200/300"),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
