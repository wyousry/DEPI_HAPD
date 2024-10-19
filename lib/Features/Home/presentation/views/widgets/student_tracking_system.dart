import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StudentTrackingSystem extends StatelessWidget {
  const StudentTrackingSystem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      color: kWhite,
      borderRadius: BorderRadius.circular(16),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Tracking system',
              style: Styles.text25StyleW800.copyWith(color: kText),
            ),
            const SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Text(
                'Flutter',
                style: Styles.text18StyleW600
                    .copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                'State Management',
                style: Styles.text18StyleW600
                    .copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                'Bloc - Cubit - Provider',
                style: Styles.text18StyleW600
                    .copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            // const SizedBox(height: 20),
          ]),
          CircularPercentIndicator(
            radius: 60.0,
            lineWidth: 11.0,
            animation: true,
            animationDuration: 800,
            percent: 0.76, // 50%
            center: Text(
              "${(0.76 * 100).toInt()}%",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.teal,
            backgroundColor: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }
}
