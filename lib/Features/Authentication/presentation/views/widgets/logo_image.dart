import 'package:depi_lms/core/utils/assets.dart';
import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        AssetsData.logo,
        width: 170,
      ),
    );
  }
}
