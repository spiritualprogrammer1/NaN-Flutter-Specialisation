import 'package:flutter/material.dart';

class RichTextController extends StatefulWidget {
  @override
  RichTextState createState() => RichTextState();

}

class RichTextState extends State<RichTextController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText'),
      ),
      body: Center(
        child: RichText(
          softWrap: true,
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Colors.brown),
              text: "Style par defaut appliqué, ",
                children: <TextSpan>[
                  TextSpan(text: "J'ai un style personalisé", style: TextStyle(color: Colors.red)),
                  TextSpan(text: ", Moi aussi", style: TextStyle(color: Colors.blue)),
                ]
            )
        ),
      ),
    );
  }

}