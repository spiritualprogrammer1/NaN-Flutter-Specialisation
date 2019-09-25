import 'package:flutter/material.dart';

class AnimatedContainerController extends StatefulWidget {
  @override
  AnimatedContainerState createState() => AnimatedContainerState();

}

class AnimatedContainerState extends State<AnimatedContainerController> {

  bool animate = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
            duration: Duration(seconds: 2),
          width: (animate) ? 150 : 50,
          height: (animate) ? 20 : 50,
          color: (animate) ? Colors.blue : Colors.green,
          child: Container(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => setState(() => animate = !animate)),
        child: Icon(Icons.forward),
      ),
    );
  }

}