import 'package:flutter/material.dart';

class TooltipController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Tooltip'),),
      body: Center(
        child: Tooltip(
          message: "Je suis un tooltip",
          child: Text('Long press me', style: TextStyle(fontSize: 25.0),),
        ),
      ),
    );
  }

}