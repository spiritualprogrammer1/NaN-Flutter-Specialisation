import 'package:flutter/material.dart';


class ConstrainedBoxController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 50.0
              ),
              child: Container(
                color: Colors.red,
                width: 150,
                height: 150,
              ),
          ),
        ),
      ),
    );
  }

}