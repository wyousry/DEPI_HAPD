import 'package:depi_hapd/Features/Home/presentation/views/widgets/rounded_progress_bar.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class GroupTrackItem extends StatelessWidget {
  const GroupTrackItem({
    super.key,
    required this.title,
    required this.currentValue,
    required this.totalValue,
    required this.difference,
    required this.progressColor,
    required this.differenceColor,
    required this.differenceIcon,
  });

  final String title;
  final int currentValue;
  final int totalValue;
  final int difference;
  final Color progressColor;
  final Color differenceColor;
  final IconData differenceIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Styles.text18StyleW500,
            ),
            // const SizedBox(height: 8),
            RoundedProgressBar(
                currentValue: currentValue,
                totalValue: totalValue,
                progressColor: progressColor),
            const SizedBox(height: 8),
          ],
        ),
        Text(
          "$currentValue / $totalValue",
          style: Styles.text18StyleW500,
        ),
        Row(
          children: [
            Icon(
              differenceIcon,
              color: differenceColor,
              size: 30,
            ),
            Text(difference > 0 ? "+$difference" : " $difference",
                style: Styles.text18StyleW500.copyWith(color: differenceColor)),
          ],
        ),
      ],
    );
  }
}
