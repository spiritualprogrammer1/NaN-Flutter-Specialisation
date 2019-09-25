import 'package:flutter/material.dart';

class SpacerController extends StatefulWidget {
  @override
  SpacerState createState() => SpacerState();

}

class SpacerState extends State<SpacerController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
                child: Column(
                  children: <Widget>[
                    Spacer(flex: 1,),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                    Spacer(flex: 2,),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                    Spacer(flex: 3,),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    )
                  ],
                )
            ),
            Flexible(
              flex: 1,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Spacer(flex: 1,),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.blue,
                      ),
                      Spacer(flex: 2,),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.blue,
                      ),
                      Spacer(flex: 3,),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.blue,
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}