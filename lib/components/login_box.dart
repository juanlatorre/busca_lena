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
    topBox.moveTo(width * 0.05, height * 0.08);
    topBox.quadraticBezierTo(
        width * 0.05, height * 0.03, width * 0.1, height * 0.03);
    topBox.lineTo(width * 0.9, height * 0.03);
    topBox.quadraticBezierTo(
        width * 0.98, height * 0.03, width * 0.98, height * 0.08);
    topBox.lineTo(width * 0.98, height * 0.9);
    topBox.lineTo(width * 0.05, height * 0.6);
    canvas.drawPath(topBox, paint);

    // Path bottomBox = Path();
    // bottomBox.moveTo(width * 0.05, height * 0.56);
    // bottomBox.lineTo(width * 0.05, height * 0.9);
    // bottomBox.quadraticBezierTo(
    //     width * 0.05, height * 0.95, width * 0.1, height * 0.95);
    // bottomBox.lineTo(width * 0.92, height * 0.95);
    // bottomBox.quadraticBezierTo(
    //     width * 0.98, height * 0.95, width * 0.98, height * 0.9);
    // canvas.drawPath(bottomBox, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
