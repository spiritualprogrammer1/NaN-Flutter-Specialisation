import 'dart:math';

import 'package:flutter/material.dart';

class TransformController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Transform'),),
      body: Center(
        child: Transform.rotate(
            angle: pi/4,
          child: Icon(Icons.delete, size: 100.0, color: Colors.green,),
        ),
      ),
    );
  }
  
}