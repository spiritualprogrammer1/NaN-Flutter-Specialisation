import 'package:flutter/material.dart';

class SafeAreaController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
          )
      ),
    );
  }

}