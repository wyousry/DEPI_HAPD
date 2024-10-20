import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'DEPI LMS',
              textAlign: TextAlign.center,
              style: Styles.text45StyleW600,
            ),
          );
        });
  }
}
