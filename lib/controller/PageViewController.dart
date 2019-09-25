import 'package:flutter/material.dart';

class PageViewController extends StatelessWidget {

  Widget myContainer(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          myContainer(Colors.blue),
          myContainer(Colors.green),
          myContainer(Colors.red),
          myContainer(Colors.yellow),
        ],
      ),
    );
  }

}