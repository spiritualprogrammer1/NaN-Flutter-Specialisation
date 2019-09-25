import 'package:flutter/material.dart';

class AlignController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Align'),),
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Text('Je suis aligné', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }

}