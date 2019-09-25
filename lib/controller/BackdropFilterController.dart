import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Backdrop Filter'),),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset("assets/Croquis.png"),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
  
}