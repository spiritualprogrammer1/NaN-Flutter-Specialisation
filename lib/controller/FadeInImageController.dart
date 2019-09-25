import 'package:flutter/material.dart';

class FadeInImageController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Fade In Image'),),
      body: Center(
        child: FadeInImage.assetNetwork(
            placeholder: "assets/Croquis.png",
            image: "https://ivoireboutik.ci/assets/img/logo.png"
        ),
      ),
    );
  }

}