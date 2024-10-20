import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package

class BodyAnnouncement extends StatelessWidget {
  const BodyAnnouncement({super.key, this.widget});

  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    // Get the current date
    String currentDate = DateFormat('d/M/yyyy').format(DateTime.now());

    return CustomShadow(
      borderRadius: BorderRadius.circular(16),
      color: kGrey.shade200,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
      margin: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Body : ',
            style: Styles.textStyle25.copyWith(color: kText),
          ),
          const SizedBox(height: 15),
          widget ?? Container(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            alignment: Alignment.bottomRight,
            child: Text(
              currentDate, // Use the current date here
              style: Styles.text15Stylew600,
            ),
          ),
        ],
      ),
    );
  }
}