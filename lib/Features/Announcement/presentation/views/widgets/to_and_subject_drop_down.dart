import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/drob_down_menu.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ToAndSubjectDropDown extends StatelessWidget {
  final List<DropdownMenuEntry<String>> toDropDownList;
  final List<DropdownMenuEntry<String>> subjectDropDownList;

  const ToAndSubjectDropDown({
    super.key,
    required this.toDropDownList,
    required this.subjectDropDownList,
  });

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
                drobDownList: toDropDownList,
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
                drobDownList: subjectDropDownList,
                hintText: 'Select Subject',
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
