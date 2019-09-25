import 'package:flutter/material.dart';


class FadeTransitionController extends StatefulWidget {
  @override
  FadeTransitionState createState() => FadeTransitionState();

}

class FadeTransitionState extends State<FadeTransitionController> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FadeTransition(
            opacity: _animation,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
        )
      ),
    );
  }

}