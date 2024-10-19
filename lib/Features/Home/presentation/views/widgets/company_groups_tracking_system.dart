import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/custom_drop_down_button.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/group_track_item.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CompanyGroupsTrackingSystem extends StatelessWidget {
  const CompanyGroupsTrackingSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      color: kWhite,
      borderRadius: BorderRadius.circular(16),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Groups Tracking',
                style: Styles.textStyle25.copyWith(color: kText),
              ),
              CustomDropdownButton(
                borderColor: kGreenAccentColor,
                fillColor: kWhite,
                textStyle:
                    Styles.text18StyleW600.copyWith(color: kGreenAccentColor),
                dropDownList: const ['Month', 'Week', 'Day', 'Year'],
              ),
            ],
          ),
          const SizedBox(height: 25),
          const GroupTrackItem(
            title: "Ahead of Track",
            currentValue: 4,
            totalValue: 15,
            difference: -2,
            progressColor: Colors.green,
            differenceColor: Colors.red,
            differenceIcon: Icons.arrow_drop_down,
          ),
          const SizedBox(height: 5),
          const GroupTrackItem(
            title: "On Track",
            currentValue: 3,
            totalValue: 15,
            difference: -2,
            progressColor: Colors.orange,
            differenceColor: Colors.red,
            differenceIcon: Icons.arrow_drop_down,
          ),
          const SizedBox(height: 5),
          const GroupTrackItem(
            title: "Behind Track",
            currentValue: 8,
            totalValue: 15,
            difference: 2,
            progressColor: Colors.pinkAccent,
            differenceColor: Colors.green,
            differenceIcon: Icons.arrow_drop_up,
          ),
        ],
      ),
    );
  }
}
