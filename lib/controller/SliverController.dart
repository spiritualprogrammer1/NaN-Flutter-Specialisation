import 'package:flutter/material.dart';

class SliverController extends StatelessWidget {

  List<Color> mycolors = [
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.cyan,
    Colors.brown,
    Colors.deepPurple
  ];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              mySlaver(),
              SliverList(
                  delegate: SliverChildListDelegate(listSliver())
              )
            ],
          )
      ),
    );
  }


  List<Widget> listSliver() {
    List<Widget> listItems = [];


    int j = 0;

    for(int i = 0; i < 50; i++) {
      Color mycolor = mycolors[j];
      (j == mycolors.length-1) ? j = 0 : j++;

      listItems.add(
        Container(
          decoration: BoxDecoration(
              color: mycolor,
              border: Border(
                  bottom: BorderSide(
                      width: 1.0
                  )
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
                child: Text('My Text $i')
            ),
          ),
        ),
      );
    }

    return listItems;
  }


  Widget mySlaver() {
    return SliverAppBar(
      floating: true,
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: Colors.red,
          child: Center(
            child: Text('MY BACKGROUND', style: TextStyle(color: Colors.white, fontSize: 30.0)),
          ),
        ),
      ),
      title: Text('My Sliver'),
    );
  }


}