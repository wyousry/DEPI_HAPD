import 'package:flutter/material.dart';

class RoundedProgressBar extends StatelessWidget {
  const RoundedProgressBar(
      {super.key,
      required this.currentValue,
      required this.totalValue,
      required this.progressColor});

  final int currentValue;
  final int totalValue;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[300], // Background color
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: LinearProgressIndicator(
          value: currentValue / totalValue, // Current progress (70% here)
          // backgroundColor: Colors.transparent,
          valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          minHeight: 8, // Height of the progress bar
        ),
      ),
    );
  }
}
