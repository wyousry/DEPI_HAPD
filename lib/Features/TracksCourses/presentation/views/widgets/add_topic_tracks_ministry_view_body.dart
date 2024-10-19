import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddTopicTracksMinistryViewBody extends StatelessWidget {
  const AddTopicTracksMinistryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarListTile(
            title: 'Add New Mobile Topic',
            edgeInsets: const EdgeInsets.symmetric(vertical: 7),
            leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kWhite,
                )),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Topic Name',
                    style: Styles.text22StyleW600,
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (p0) {},
                    labelText: 'Topic Name',
                    fillColor: kGrey.shade200,
                    labelStyle: Styles.text15Stylew600
                        .copyWith(color: kGreenAccentColor),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Hours Count',
                    style: Styles.text22StyleW600,
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (p0) {},
                    labelText: ' Hours Count',
                    fillColor: kGrey.shade200,
                    labelStyle: Styles.text15Stylew600
                        .copyWith(color: kGreenAccentColor),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Due Date',
                    style: Styles.text22StyleW600,
                  ),
                  const SizedBox(height: 10),
                  CustomTextFormField(
                    onChanged: (p0) {},
                    labelText: 'Due Date',
                    fillColor: kGrey.shade200,
                    labelStyle: Styles.text15Stylew600
                        .copyWith(color: kGreenAccentColor),
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                      color: kGreenAccentColor,
                      size: 36,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
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
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
