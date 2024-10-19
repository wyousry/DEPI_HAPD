import 'package:depi_lms/Features/Setting/presentation/views/widgets/custom_basic_row_in_setting.dart';
import 'package:depi_lms/Features/Setting/presentation/views/widgets/custom_row_down_basic_row_in_setting.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class PartOfAccount extends StatelessWidget {
  const PartOfAccount({super.key, this.onPressed});

final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBasicRowInSetting(
          text: 'Account',
          icon: Icons.account_circle_outlined,
        ),
        const SizedBox(height: 6),
        const Divider(),
        CustomRowDownBasicRowInSetting(
          text: 'Edit Profile',
          widget: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: kGreenAccentColor,
            ),
          ),
        ),
      ],
    );
  }
}
