import 'package:flutter/material.dart';

class LoginBox extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;

    Path topBox = Path();
    topBox.moveTo(0, height * 0.08);
    topBox.quadraticBezierTo(0, height * 0.03, width * 0.1, height * 0.03);
    topBox.lineTo(width * 0.9, height * 0.03);
    topBox.quadraticBezierTo(width, height * 0.03, width, height * 0.08);
    topBox.lineTo(width, height * 0.85);
    topBox.lineTo(0, height * 0.51);
    canvas.drawPath(topBox, paint);

    Path bottomBox = Path();
    bottomBox.moveTo(0, height * 0.56);
    bottomBox.lineTo(0, height * 0.9);
    bottomBox.quadraticBezierTo(0, height * 0.95, width * 0.1, height * 0.95);
    bottomBox.lineTo(width * 0.92, height * 0.95);
    bottomBox.quadraticBezierTo(width, height * 0.95, width, height * 0.9);
    canvas.drawPath(bottomBox, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
