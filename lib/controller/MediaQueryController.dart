import 'package:flutter/material.dart';

class MediaQueryController extends StatefulWidget {
  @override
  MediaQueryState createState() => MediaQueryState();

}

class MediaQueryState extends State<MediaQueryController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Votre device fait une taille de ${MediaQuery.of(context).size.height} en hauteur'),
            Text('et une taille de ${MediaQuery.of(context).size.width} de largeur'),
          ],
        ),
      ),
    );
  }

}