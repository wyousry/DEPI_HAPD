import 'package:depi_lms/Features/Setting/presentation/views/widgets/custom_basic_row_in_setting.dart';
import 'package:depi_lms/Features/Setting/presentation/views/widgets/custom_row_down_basic_row_in_setting.dart';
import 'package:depi_lms/Features/Setting/presentation/views/widgets/content_of_alert_dialog_about.dart';
import 'package:depi_lms/Features/Setting/presentation/views/widgets/content_of_alert_dialog_lan.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/custom_alert_dialog.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class PartOfMore extends StatefulWidget {
  const PartOfMore({super.key});

  @override
  State<PartOfMore> createState() => _PartOfMoreState();
}

class _PartOfMoreState extends State<PartOfMore> {
  bool dark = false;
  IconData darkIcon = Icons.dark_mode_outlined;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBasicRowInSetting(
          text: 'More',
          icon: Icons.add_circle_outline_outlined,
        ),
        const SizedBox(height: 7),
        const Divider(),
        CustomRowDownBasicRowInSetting(
          text: 'Languege',
          widget: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomAlertDialog(
                    content: ContentOfAlertDialogLan(),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: kGreenAccentColor,
            ),
          ),
        ),
        CustomRowDownBasicRowInSetting(
          text: 'Dark Mode',
          widget: IconButton(
            onPressed: () {
              setState(() {
                dark = !dark;
                darkIcon = dark ? Icons.dark_mode : Icons.dark_mode_outlined;
              });
            },
            icon: Icon(
              darkIcon,
              size: 20,
              color: kGreenAccentColor,
            ),
          ),
        ),
        CustomRowDownBasicRowInSetting(
          text: 'About',
          widget: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomAlertDialog(
                        content: ContentOfAlertDialogAbout());
                  });
            },
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
