import 'package:flutter/material.dart';

class FittedBoxController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Fitted Box'),),
      body: Center(
        child: Container(
          width: 100.0,
          height: 50.0,
          color: Colors.blue,
          child: FittedBox(
            child: Image.asset("assets/Croquis.png"),
          ),
        ),
      ),
    );
  }

}