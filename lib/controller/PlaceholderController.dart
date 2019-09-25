import 'package:flutter/material.dart';

class PlaceholderController extends StatefulWidget {
  @override
  PlaceholderState createState() => PlaceholderState();

}

class PlaceholderState extends State<PlaceholderController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            height: 50.0,
            width: 120.0,
            child: Placeholder(
              fallbackHeight: 20.0,
              fallbackWidth: 50.0,
              color: Colors.red,
              strokeWidth: 5.0,
            ),
          )
        ),
      ),
    );
  }

}