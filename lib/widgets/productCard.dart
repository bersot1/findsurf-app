import 'package:findsurf_app/widgets/mainTitleOfProduct.dart';
import 'package:flutter/material.dart';

class FSProductCard extends StatelessWidget {
  String path;

  FSProductCard({
    @required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height / 2.5,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(path),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: Colors.black.withOpacity(.2),
            )
          ],
          //boxShadow: [BoxShadow(color: Colors.black12,  offset: Offset(0,6), blurRadius: 6)]
        ),
      ),
      Positioned(
        left: 0.0,
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        height: 70,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black45,
                Colors.black45.withOpacity(0.1),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        left: 10.0,
        bottom: 12,
        width: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Prancha Science",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Nova",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Row(
              children: <Widget>[
                Text(
                  "R\$ 800,00",
                  style: TextStyle(fontSize: 9.0, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
