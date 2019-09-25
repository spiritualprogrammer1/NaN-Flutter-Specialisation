import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CopyrightController extends StatelessWidget {


  TableRow myRow(String key, String value, {bool git: false}) {
    return TableRow(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(left: 5.0),
          child: Text(key, textScaleFactor: 0.8,),
        ),
        Padding(
            padding: EdgeInsets.only(left: 5.0),
          child: InkWell(
            onTap: () {
              if(!git) {
                return;
              }
              _launchURL();
            },
            child: Text(value, textScaleFactor: 0.8,),
          )
        ),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://github.com/DeathGun3344/NaN-Flutter-Specialisation';
    if(await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Copyright'),),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2,
              color: Colors.black,
            ),
            Center(
              child: Card(
                elevation: 10.0,
                child: Container(
                  width: 300.0,
                  height: 350.0,
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/Croquis.png"),
                      Divider(),
                      Table(
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          myRow("Nom", "YAO"),
                          myRow("Prenom", "Kouamé Jean Florentin"),
                          myRow("Adresse email", "florentin.yao.3344@gmail.com"),
                          myRow("Lien github", "https://github.com/DeathGun3344/NaN-Flutter-Specialisation", git: true),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}