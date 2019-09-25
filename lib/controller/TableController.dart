import 'package:flutter/material.dart';

class TableController extends StatelessWidget {


  TableRow myTableRow(String key, String value) {
    return TableRow(
      children: [
        Text(key, textAlign: TextAlign.center,),
        Text(value, textAlign: TextAlign.center,)
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Table(
          children: [
            myTableRow("Nom", "Yao"),
            myTableRow("Prenom", "Florentin"),
            myTableRow("Ecole", "UVCI"),
          ],
          border: TableBorder.all(color: Colors.blue),
        ),
      ),
    );
  }

}