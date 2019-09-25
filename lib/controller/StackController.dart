import 'package:flutter/material.dart';


class StackController extends StatefulWidget {
  @override
  StackState createState() => StackState();

}

class StackState extends State<StackController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            Positioned(
                top: 50,
                left: 50,
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                )
            ),
            Positioned(
                bottom: 50,
                right: 50,
                child: Container(
                  color: Colors.green,
                  width: 50,
                  height: 50,
                )
            )
          ],
        ),
      ),
    );
  }

}