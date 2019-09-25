import 'package:flutter/material.dart';

class IndexedStackController extends StatefulWidget {
  @override
  IndexedStackState createState() => IndexedStackState();

}

class IndexedStackState extends State<IndexedStackController> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Indexed Stack'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IndexedStack(
              index: index,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                  width: 40,
                  height: 40,
                ),
                Container(
                  color: Colors.red,
                  width: 50,
                  height: 70,
                ),
                Container(
                  color: Colors.blue,
                  width: 70,
                  height: 50,
                ),
              ],
            ),
            Slider(
                value: index.toDouble(),
                min: 0,
                max: 2,
                onChanged: (data) {
                  setState(() {
                    index = data.toInt();
                  });
                }
            )
          ],
        ),
      ),
    );
  }
}