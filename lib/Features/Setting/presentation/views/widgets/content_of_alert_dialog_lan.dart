import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentOfAlertDialogLan extends StatelessWidget {
  const ContentOfAlertDialogLan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 330,
      child: Column(
        children: [
          const SizedBox(height: 15),
          CustomRow(
            text: 'Arabic',
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(height: 20),
          Divider(indent: 30, endIndent: 30, color: kGrey.shade800),
          const SizedBox(height: 20),
          CustomRow(
            text: 'English',
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const CustomRow({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(width: 30),
          const Icon(
            Icons.language,
            color: kGreenAccentColor,
            size: 32,
          ),
          const SizedBox(width: 54),
          Text(text, style: Styles.text22StyleW600),
        ],
      ),
    );
  }
}
