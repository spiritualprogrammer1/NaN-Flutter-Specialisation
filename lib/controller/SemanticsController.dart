import 'package:flutter/material.dart';


class SemanticsController extends StatefulWidget {
  @override
  SemanticsState createState() => SemanticsState();

}

class SemanticsState extends State<SemanticsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Semantics(
              child: Text('Texte en rouge', style: TextStyle(color: Colors.red),),
              hidden: false,
              hint: "Ceci est un texte ecrit en rouge",
              focused: false,
              image: false,
              textField: false,
            )
          ],
        ),
      ),
    );
  }

}