import 'package:flutter/material.dart';

class CustomShadow extends StatelessWidget {
  const CustomShadow(
      {super.key, required this.child, this.color, this.borderRadius, this.padding, this.margin});

  final Widget child;
  final Color? color;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding,margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(
            color: Color(0xffBAC1BE),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: child,
    );
  }
}
