import 'package:flutter/material.dart';

class AbsorbPointerController extends StatefulWidget {
  @override
  _AbsorbPointerControllerState createState() => _AbsorbPointerControllerState();
}

class _AbsorbPointerControllerState extends State<AbsorbPointerController> {


  bool absord = true;
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      key: _key,
      body: Center(
        child: Container(
          height: 100.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AbsorbPointer(
                absorbing: !absord,
                child: RaisedButton(
                    onPressed: () {
                      _key.currentState.showSnackBar(SnackBar(content: Text('Vous avez cliquer'), duration: Duration(seconds: 1),));
                    },
                  child: Text('Click Me'),
                ),
              ),
              Checkbox(
                  value: absord,
                  onChanged: (val) {
                    setState(() {
                      absord = val;
                    });
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}