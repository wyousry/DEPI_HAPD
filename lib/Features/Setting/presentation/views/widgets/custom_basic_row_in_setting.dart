import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class CustomBasicRowInSetting extends StatelessWidget {
  const CustomBasicRowInSetting({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 45,
          color: kGreenAccentColor,
        ),
        const SizedBox(width: 20),
        Text(text, style: Styles.text25StyleW800),
      ],
    );
  }
}
