import 'package:findsurf_app/widgets/FSAvatar.dart';
import 'package:flutter/material.dart';

class FSHeader extends StatelessWidget {
  const FSHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new ExactAssetImage("assets/header/header.png"),
          fit: BoxFit.cover,
          alignment: Alignment.bottomLeft,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            FSAvatar(
              path: "https://picsum.photos/200/300",
              width: 50,
            ),
          ],
        ),
      ),
    );
  }
}
