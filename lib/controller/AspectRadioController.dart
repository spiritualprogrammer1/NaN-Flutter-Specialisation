import 'package:flutter/material.dart';

class AspectRadioController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: AspectRatio(
            aspectRatio: 16/9,
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
        ),
      )
    );
  }

}