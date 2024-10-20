import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderWithText extends StatelessWidget {
  const CustomHeaderWithText(
      {super.key, required this.header, required this.text});

  final String header;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: Styles.text18StyleW500,
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kGrey.shade200,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              text,
              style: Styles.text15Stylew600,
            ),
          )
        ],
      ),
    );
  }
}
