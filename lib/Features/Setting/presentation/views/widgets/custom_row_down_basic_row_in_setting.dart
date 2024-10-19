import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRowDownBasicRowInSetting extends StatelessWidget {
  const CustomRowDownBasicRowInSetting({
    super.key,
    required this.text,
    required this.widget,
  });
  final String text;

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 70),
        Text(text, style: Styles.text18StyleW600),
        const Spacer(),
        GestureDetector(child: widget)
      ],
    );
  }
}
