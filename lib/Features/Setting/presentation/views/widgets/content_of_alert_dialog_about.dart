import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ContentOfAlertDialogAbout extends StatelessWidget {
  const ContentOfAlertDialogAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          '''The Digital Egypt Pioneers initiative is a key component of Egypt's digital transformation strategy and investing in students' digital skills by offering specialized training programs and workshops in various technological fields so that Egypt can build a more prosperous future.''',
          style: Styles.text22StyleW600,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
