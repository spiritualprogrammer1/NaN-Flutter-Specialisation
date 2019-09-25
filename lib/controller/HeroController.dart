import 'package:flutter/material.dart';

class HeroController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Hero'),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              bottom: 50,
              child: Hero(
                  tag: 'hero',
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: 80,
                        maxHeight: 80
                    ),
                    child: Material(
                      child: InkWell(
                          child: Image.asset("assets/Croquis.png"),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (buildContext) {
                              return HeroSecondController();
                            }));
                          }
                      ),
                    )
                  )
              ),
            ),
          ],
        )
      )
    );
  }
}

class HeroSecondController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Hero 2'),),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 50,
                  child: Hero(
                      tag: 'hero',
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 180,
                          maxHeight: 180
                        ),
                        child: Material(
                          child: InkWell(
                              child: Image.asset("assets/Croquis.png"),
                              onTap: () {
                                Navigator.pop(context);
                              }
                          ),
                        )
                      )
                  ),
                ),
              ],
            )
        )
    );
  }

}