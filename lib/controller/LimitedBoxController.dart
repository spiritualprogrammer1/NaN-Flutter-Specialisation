import 'package:flutter/material.dart';

class LimitedBoxController extends StatefulWidget {
  @override
  LimitedBoxState createState() => LimitedBoxState();

}

class LimitedBoxState extends State<LimitedBoxController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limited Box'),
      ),
      body: Center(
        child: LimitedBox(
          maxHeight: 50.0,
          maxWidth: 30.0,
          child: Container(
            color: Colors.brown,
          ),
        ),
      )
    );
  }

}