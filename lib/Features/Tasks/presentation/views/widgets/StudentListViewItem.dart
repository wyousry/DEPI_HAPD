import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class StudentListViewItem extends StatelessWidget {
  const StudentListViewItem({
    super.key,
    required this.student,
    required this.isChecked,
    required this.onChanged,
    this.review,
    this.select,
    this.height,
    this.onTap,
  });

  final String student;
  final bool isChecked;
  final ValueChanged<bool?> onChanged;
  final bool? review, select;
  final double? height;
  final void Function()? onTap;

  Widget? buildTrailingWidgetMethod() {
    if (select == true) {
      return Checkbox(
        value: isChecked,
        onChanged: onChanged,
      );
    } else if (review == true) {
      return Row(
        children: [
          SizedBox(
            width: 70,
            height: 40,
            child: CustomButton(
              text: '10/10',
              backgroundColor: kGreenAccentColor,
              borderRadius: BorderRadius.circular(11),
              textStyle: Styles.text18StyleW500.copyWith(color: kWhite),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 90,
            height: 40,
            child: CustomButton(
              text: 'Review',
              backgroundColor: kGreenAccentColor,
              borderRadius: BorderRadius.circular(11),
              textStyle: Styles.text18StyleW500.copyWith(color: kWhite),
              onTap: onTap,
            ),
          )
        ],
      );
    }
    return null; // Return null if neither condition is met
  }

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      margin: const EdgeInsets.symmetric(vertical: 9),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color: kGrey.shade200,
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Text(student, style: Styles.text18StyleW600),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              child: buildTrailingWidgetMethod(),
            ),
          ),
          SizedBox(
            height: height,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

// Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: ListTile(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         tileColor: Colors.grey[200],
//         title: Text(student, style: Styles.text18StyleW600),
//         trailing: buildTrailingWidgetMethod(),
//       ),
//     );
