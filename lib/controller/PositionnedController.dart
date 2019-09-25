import 'package:flutter/material.dart';

class PositionnedController extends StatelessWidget {


  Widget myContainer() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Positionned"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 50,
            child: myContainer(),
          ),
          Positioned(
            bottom: 50,
            child: myContainer(),
          ),
          Positioned(
            left: 50,
            child: myContainer(),
          ),
          Positioned(
            right: 50,
            child: myContainer(),
          ),
        ],
      ),
    );
  }
}