import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  const Date({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      color: kWhite,
      borderRadius: BorderRadius.circular(16),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Next lecture',
                style: Styles.textStyle25.copyWith(color: kText),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text(
                  '25/9/2024',
                  style: Styles.text18StyleW600,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Type of lecture',
                style: Styles.textStyle25.copyWith(color: kText),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text(
                  'Technical',
                  style: Styles.text18StyleW600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
