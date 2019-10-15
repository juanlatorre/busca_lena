import 'package:flutter/material.dart';

class LoginBackground extends CustomPainter {
  final Gradient gradient = SweepGradient(colors: <Color>[
    Colors.green.withOpacity(1),
    Colors.orange.withOpacity(1),
    Colors.red.withOpacity(1),
    Colors.red.withOpacity(1),
  ]);

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final rect = Rect.fromLTRB(0, 0, width, height);
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(rect);
    paint.color = Colors.grey.shade300;
    canvas.drawPath(mainBackground, paint);

    paint.shader = gradient.createShader(rect);

    Path bottomOval = Path();
    bottomOval.moveTo(width, height * 0.5);
    bottomOval.quadraticBezierTo(
        width * 0.4, height * 0.7, width, height * 1.1);
    bottomOval.close();
    paint.color = Color(0xff6ab04c);
    canvas.drawPath(bottomOval, paint);

    Path topOval = Path();
    topOval.moveTo(0, height * 0.3);
    topOval.quadraticBezierTo(width * 0.4, height * 0.4, width, height * 0.15);
    topOval.lineTo(width, 0);
    topOval.lineTo(0, 0);
    topOval.close();
    paint.color = Color(0xfff0932b);
    canvas.drawPath(topOval, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
