import 'package:flutter/material.dart';

class FSCategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: Colors.black.withOpacity(.2),
            )
          ]),
      child: FlatButton(
        onPressed: () {},
        child: Image.asset(
          "assets/category/prancha.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
