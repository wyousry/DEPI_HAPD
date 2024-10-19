import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FromAndToAnnouncement extends StatelessWidget {
  const FromAndToAnnouncement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
        color: kGrey.shade200,
        borderRadius: BorderRadius.circular(16),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'From : ',
                  style: Styles.textStyle25.copyWith(color: kText),
                ),
                Text(
                  'Ministry of communication',
                  style: Styles.text18StyleW600,
                ),
                // const Spacer(),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'To : ',
                  style: Styles.textStyle25.copyWith(color: kText),
                ),
                Text(
                  'Mobile application track ',
                  style: Styles.text18StyleW600,
                ),
              ],
            ),
          ],
        ));
  }
}
