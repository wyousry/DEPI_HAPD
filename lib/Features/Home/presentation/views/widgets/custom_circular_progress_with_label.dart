import 'package:depi_hapd/Features/Home/presentation/views/widgets/circular_painter.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressWithLabel extends StatelessWidget {
  const CustomCircularProgressWithLabel(
      {required this.progress,
      required this.total,
      super.key,
      required this.backForeGroundColor});

  final int progress;
  final int total;
  final Color backForeGroundColor;

  @override
  Widget build(BuildContext context) {
    double progressValue = progress / total;

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: CircularPainter(
              progress: progressValue,
              backForeGroundColor: backForeGroundColor,
            ),
          ),
        ),
        Text('$progress / $total', style: Styles.text22StyleW600),
      ],
    );
  }
}
