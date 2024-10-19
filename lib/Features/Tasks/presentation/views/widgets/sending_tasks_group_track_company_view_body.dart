import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/drob_down_menu.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SendingTasksGroupTrackCompanyViewBody extends StatelessWidget {
  const SendingTasksGroupTrackCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        children: [
          AppBarListTile(
            title: 'Send Task',
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    'Assignment Name',
                    style: Styles.text22StyleW600,
                  ),
                  CustomTextFormField(
                    onChanged: (p0) {},
                    labelText: 'Assignment Name',
                    fillColor: kGrey.shade200,
                    labelStyle: Styles.text18StyleW500,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Assignment Type',
                    style: Styles.text22StyleW600,
                  ),
                  DropDownMenu(
                    // width: 300,
                    drobDownList: const [
                      DropdownMenuEntry(value: 'Technical', label: 'Technical'),
                      DropdownMenuEntry(
                          value: 'Soft Sills', label: 'Soft Sills'),
                      DropdownMenuEntry(value: 'English', label: 'English'),
                      DropdownMenuEntry(value: 'Freelance', label: 'Freelance')
                    ],
                    hintStyle: Styles.text18StyleW500,
                    textColor: Colors.black,
                    hintText: 'Assignment Type',
                    borderRadius: BorderRadius.circular(12),
                    // height: 90,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none),
                    fillColor: kGrey.shade200,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Start Date',
                    style: Styles.text22StyleW600,
                  ),
                  CustomTextFormField(
                    onChanged: (p0) {},
                    labelText: 'Start Date',
                    labelStyle: Styles.text18StyleW500.copyWith(),
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                      size: 33,
                      color: kGreenColor,
                    ),
                    fillColor: kGrey.shade200,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Deadline',
                    style: Styles.text22StyleW600,
                  ),
                  CustomTextFormField(
                    onChanged: (p0) {},
                    labelText: 'Deadline',
                    labelStyle: Styles.text18StyleW500.copyWith(),
                    suffixIcon: const Icon(
                      Icons.calendar_month_outlined,
                      size: 33,
                      color: kGreenColor,
                    ),
                    fillColor: kGrey.shade200,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomButton(
                      text: 'Add File',
                      backgroundColor: kGreenAccentColor,
                      textStyle: Styles.text18StyleW600.copyWith(color: kWhite),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CustomButton(
                      text: 'Select Students',
                      backgroundColor: kGreenAccentColor,
                      textStyle: Styles.text18StyleW600.copyWith(color: kWhite),
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        GoRouter.of(context).push(
                            '${AppRouter.kSelectStudentTasksGroupTrackCompanyView}?appbarName=Select Students');
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: CustomButton(
                      text: 'Submit',
                      backgroundColor: kGreenAccentColor,
                      textStyle: Styles.text18StyleW600.copyWith(color: kWhite),
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
