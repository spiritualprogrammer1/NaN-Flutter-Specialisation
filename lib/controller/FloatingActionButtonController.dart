import 'package:flutter/material.dart';

class FloatingActionButtonController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: null,
        foregroundColor: Colors.red,
        backgroundColor: Colors.black,
        child: Text('FAB'),
        tooltip: 'Floating Action Button',
      ),
    );
  }

}