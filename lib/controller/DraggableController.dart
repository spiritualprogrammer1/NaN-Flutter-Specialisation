import 'package:flutter/material.dart';


class DraggableController extends StatefulWidget {
  @override
  DraggableState createState() => DraggableState();
}

class DraggableState extends State<DraggableController> {


  Widget myDraggable(Color color) {
    return Draggable<Color>(
      data: color,
        child: Container(
          width: 50,
          height: 50,
          color: color,
        ),
        feedback: Container(
          width: 50,
          height: 50,
          color: color,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
                child: Center(
                  child: Wrap(
                    children: <Widget>[
                      myDraggable(Colors.red),
                      myDraggable(Colors.blue),
                      myDraggable(Colors.black),
                      myDraggable(Colors.yellow),
                      myDraggable(Colors.grey),
                      myDraggable(Colors.green),
                    ],
                  ),
                )
            ),
            Divider(),
            Flexible(
              flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: DragTarget<Color>(
                    onAccept: (val) {
                      print('data');
                    },
                    builder: (buildContext, candidate, rejects) => Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: candidate.length > 0 ? candidate[0] : Colors.transparent,
                    ),
                    onWillAccept: (val) => true,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}