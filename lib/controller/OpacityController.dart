import 'package:flutter/material.dart';

class OpacityController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Opacity(
            opacity: 0.5,
          child: Container(
            width: 70,
            height: 70,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

}