import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/custom_alert_dialog.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddDialog extends StatelessWidget {
  final String title;
  final String titleOfAppBar;

  const AddDialog({
    super.key,
    required this.title,
    required this.titleOfAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlertDialog(
      color: kGrey.shade300,
      content: SizedBox(
        width: 350,
        height: 360,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            AppBarListTile(
              title: titleOfAppBar,
              edgeInsets:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              leading: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kWhite,
                  )),
            ),
            const SizedBox(height: 70),
            Text(
              title,
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              onChanged: (p0) {},
              labelText: title,
              color: kGrey.shade100,
              fillColor: kGrey.shade100,
              borderRadius: BorderRadius.circular(40),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CustomButton(
                text: 'Save',
                backgroundColor: kGreenAccentColor,
                textStyle: Styles.text22StyleW600.copyWith(color: kWhite),
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  GoRouter.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
