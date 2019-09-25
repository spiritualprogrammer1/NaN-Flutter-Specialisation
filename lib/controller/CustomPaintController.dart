import 'package:flutter/material.dart';


class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    double x = 30;
    double y = 60;

    Paint paint = Paint()
      ..color = Colors.amberAccent
      ..strokeWidth = 1.0;
    Path path = Path()
      ..moveTo(x, 0)
      ..lineTo(2*x, y)
      ..lineTo(0, y/2)
      ..lineTo(2*x, y/2)
      ..lineTo(0, y)
      ..close()
    ;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}

class CustomPaintController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Custom Paint'),),
      body: Center(
        child: CustomPaint(
          size: Size(100, 100),
          painter: MyPainter(),
        ),
      ),
    );
  }
  
}