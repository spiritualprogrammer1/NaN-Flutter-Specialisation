import 'package:flutter/material.dart';

class AnimatedPaddingController extends StatefulWidget {
  @override
  AnimatedPaddingState createState() => AnimatedPaddingState();
}

class AnimatedPaddingState extends State<AnimatedPaddingController> {

  bool pad = false;


  Widget myAnimated() {
    return AnimatedPadding(
      padding: (pad) ? EdgeInsets.all(10.0) : EdgeInsets.all(1.0),
      duration: Duration(seconds: 1),
      child: Container(width: 50, height: 50, color: Colors.red,),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Wrap(
          children: <Widget>[
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
            myAnimated(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              pad = !pad;
            });
          }
      ),
    );
  }

}