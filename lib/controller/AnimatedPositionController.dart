import 'package:flutter/material.dart';


class AnimatedPositionController extends StatefulWidget {
  @override
  AnimatedPositionState createState() => AnimatedPositionState();
}

class AnimatedPositionState extends State<AnimatedPositionController> {


  bool climb = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
              child: Container(height: 50, width: 50, color: Colors.red,),
              top: (climb) ? 50: 150,
              left: 100,
              duration: Duration(seconds: 2)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.airline_seat_recline_normal),
        onPressed: () => setState(() => climb = !climb),
      ),
    );
  }

}