import 'package:flutter/material.dart';

class WrapController extends StatelessWidget {

  Widget myContainer() {
    return Container(
      width: 70.0,
      height: 70.0,
      color: Colors.green,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 2.0,
          runSpacing: 2.0,
          alignment: WrapAlignment.center,
          children: <Widget>[
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
            myContainer(),
          ],
        ),
      ),
    );
  }

}