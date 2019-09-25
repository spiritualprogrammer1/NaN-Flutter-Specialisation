import 'package:flutter/material.dart';

class FlexibleController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.red,
                  child: Center(
                    child: Text('Flex 1'),
                  ),
                )
            ),
            Flexible(
              flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Flex 2'),
                  ),
                )
            ),
            Flexible(
              flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green,
                  child: Center(
                    child: Text('Flex 3'),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}