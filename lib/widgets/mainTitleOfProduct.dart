import 'package:flutter/material.dart';

class FSMainTitleOFProduct extends StatelessWidget {
  String title;
  double price;
  bool isNew;

  FSMainTitleOFProduct({
    @required this.title,
    @required this.price,
    @required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(title),
        Text("-"),
        Text("R\$" + price.toString()),
        Text("-"),
        Text(isNew == true ? "Novo" : "Usado")
      ],
    );
  }
}
