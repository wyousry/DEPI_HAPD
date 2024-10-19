import 'package:flutter/material.dart';
import 'dart:ui';

class CustomAlertDialog extends StatelessWidget {
  final Color? color;
  final Widget content;

  const CustomAlertDialog({
    super.key,
    required this.content,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 1.5,
        sigmaY: 1.5,
      ),
      child: AlertDialog(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: content,
      ),
    );
  }
}
