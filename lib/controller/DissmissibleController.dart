import 'package:flutter/material.dart';

class DissmissibleController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (buildContext, index) {
          return Dismissible(
              key: Key(index.toString()),
              background: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.delete, color: Colors.white,),
                    Icon(Icons.delete, color: Colors.white,),
                  ],
                ),
              ),
              child: Card(
                elevation: 8.0,
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text('Item $index'),
                ),
              )
          );
          }
      ),
    );
  }

}