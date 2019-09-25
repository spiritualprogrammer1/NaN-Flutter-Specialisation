import 'package:flutter/material.dart';

class SizeBoxController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 130.0,
          height: 40.0,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

}