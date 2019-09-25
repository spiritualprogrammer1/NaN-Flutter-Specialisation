import 'package:flutter/material.dart';


class ExpandedController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300.0,
            color: Colors.blue,
          ),
          Expanded(
              child: Container(
                color: Colors.red,
              )
          )
        ],
      ),
    );
  }

}