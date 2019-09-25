import 'package:flutter/material.dart';

class AnimatedOpacityController extends StatefulWidget {
  @override
  AnimatedOpacityState createState() => AnimatedOpacityState();

}

class AnimatedOpacityState extends State<AnimatedOpacityController> {

  bool hide = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
            opacity: (hide) ? 0 : 1,
            duration: Duration(seconds: 2),
          child: Container(
            height: 50,
            width: 50,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => hide = !hide),
        child: Icon(Icons.keyboard_hide),
      ),
    );
  }

}