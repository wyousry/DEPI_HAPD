import 'package:depi_hapd/Features/Home/presentation/views/widgets/custom_circular_progress_with_label.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AttendanceTrakingItem extends StatelessWidget {
  const AttendanceTrakingItem({
    super.key,
    required this.text,
    required this.progress,
    required this.total,
    required this.backForeGroundColor,
  });

  final String text;
  final int progress;
  final int total;
  final Color backForeGroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Styles.textStyle23
              .copyWith(color: kText, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 13),
        CustomCircularProgressWithLabel(
          progress: progress,
          total: total,
          backForeGroundColor: backForeGroundColor,
        ),
      ],
    );
  }
}
