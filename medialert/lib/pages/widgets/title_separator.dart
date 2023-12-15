import 'package:flutter/material.dart';

final class TitleSeparator extends CustomPainter {
  final double width;

  TitleSeparator(this.width);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color.fromARGB(255, 32, 144, 60);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, 0);
    path.quadraticBezierTo(width / 3, 0.5, width, 0);
    path.quadraticBezierTo(width / 3, -0.5, 0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
