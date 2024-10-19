
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/drob_down_menu.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ToAndSubjectDropDown extends StatelessWidget {
  const ToAndSubjectDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      borderRadius: BorderRadius.circular(16),
      color: kGrey.shade200,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
      margin: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'To : ',
                style: Styles.textStyle25.copyWith(color: kText),
              ),
              const Spacer(),
              DropDownMenu(
                drobDownList: const [
                  DropdownMenuEntry(value: 1, label: 'Companies'),
                  DropdownMenuEntry(value: 2, label: 'All Students'),
                  DropdownMenuEntry(value: 3, label: 'Mobile App'),
                  DropdownMenuEntry(value: 4, label: 'Wep Devolopment'),
                  DropdownMenuEntry(value: 5, label: 'Data Science'),
                  DropdownMenuEntry(value: 6, label: 'AI'),
                ],
                hintText: 'Select Direction',
                fillColor: kWhite,
                borderRadius: BorderRadius.circular(16),
                hintStyle: Styles.text18StyleW600,
                textColor: kGreenColor,
                border: InputBorder.none,
                width: 210,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                'Subject : ',
                style: Styles.textStyle25.copyWith(color: kText),
              ),
              const Spacer(),
              DropDownMenu(
                drobDownList: const [
                  DropdownMenuEntry(value: 1, label: 'Companies'),
                  DropdownMenuEntry(value: 2, label: 'All Students'),
                  DropdownMenuEntry(value: 3, label: 'Mobile App'),
                  DropdownMenuEntry(value: 4, label: 'Wep Devolopment'),
                  DropdownMenuEntry(value: 5, label: 'Data Science'),
                  DropdownMenuEntry(value: 6, label: 'AI'),
                ],
                hintText: 'Select Direction',
                fillColor: kWhite,
                borderRadius: BorderRadius.circular(16),
                hintStyle: Styles.text18StyleW600,
                textColor: kGreenColor,
                border: InputBorder.none,
                width: 210,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
