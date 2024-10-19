import 'dart:math';

import 'package:flutter/material.dart';

class CircularPainter extends CustomPainter {
  const CircularPainter({required this.progress, required this.backForeGroundColor});

  final double progress;
  final Color backForeGroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = backForeGroundColor.withOpacity(.28)
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint foregroundPaint = Paint()
      ..color = backForeGroundColor
      ..strokeWidth = 12
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Define the circular shape
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    double startAngle = -pi / .798; // Start at the top center
    double sweepAngle = 2 * pi * progress;

    // Draw the background circle (with a gap at the bottom)
    canvas.drawArc(rect, startAngle, 2 * pi * 0.75, false, backgroundPaint);

    // Draw the foreground progress arc (with the same gap)
    canvas.drawArc(rect, startAngle, sweepAngle * 0.75, false, foregroundPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true; // Repaint when progress updates
  }
}
