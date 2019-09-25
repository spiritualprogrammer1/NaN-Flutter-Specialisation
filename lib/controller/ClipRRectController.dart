import 'package:flutter/material.dart';

class ClipRRectController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('ClipRRect'),),
      body: Scaffold(
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
  
}