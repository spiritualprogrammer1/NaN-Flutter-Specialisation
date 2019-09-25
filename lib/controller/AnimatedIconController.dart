import 'package:flutter/material.dart';

class AnimatedIconController extends StatefulWidget {
  @override
  AnimatedIconState createState() => AnimatedIconState();

}

class AnimatedIconState extends State<AnimatedIconController> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: InkWell(
          child: AnimatedIcon(
            icon: AnimatedIcons.home_menu,
            progress: _animationController,
          ),
          onTap: () {
            _animationController.isCompleted ? _animationController.reverse() : _animationController.forward();
          },
        ),
      ),
    );
  }

}