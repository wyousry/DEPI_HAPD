import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/drob_down_menu.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TimeAndPlacesViewBody extends StatelessWidget {
  const TimeAndPlacesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        children: [
          AppBarListTile(
            title: 'Time And Places',
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
          const SizedBox(height: 35),
          Expanded(
            child: SingleChildScrollView(
              child: CustomShadow(
                borderRadius: BorderRadius.circular(35),
                color: kGrey.shade200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Session Name',
                      style: Styles.text22StyleW600,
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Session Name',
                      fillColor: kWhite,
                      labelStyle: Styles.text18StyleW500,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Instructor Name',
                      style: Styles.text22StyleW600,
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Instructor Name',
                      fillColor: kWhite,
                      labelStyle: Styles.text18StyleW500,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Session Type',
                      style: Styles.text22StyleW600,
                    ),
                    const SizedBox(height: 10),
                    DropDownMenu(
                      width: 340,
                      drobDownList: const [
                        DropdownMenuEntry(
                            value: 'Technical', label: 'Technical'),
                        DropdownMenuEntry(
                            value: 'Soft Sills', label: 'Soft Sills'),
                        DropdownMenuEntry(value: 'English', label: 'English'),
                        DropdownMenuEntry(
                            value: 'Freelance', label: 'Freelance')
                      ],
                      hintStyle: Styles.text18StyleW500,
                      textColor: Colors.black,
                      hintText: 'Session Type',
                      borderRadius: BorderRadius.circular(12),
                      // height: 90,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none),
                      fillColor: kWhite,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Session Link',
                      style: Styles.text22StyleW600,
                    ),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Session Link',
                      labelStyle: Styles.text18StyleW500.copyWith(),
                      fillColor: kWhite,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Session Location',
                      style: Styles.text22StyleW600,
                    ),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Session Location',
                      labelStyle: Styles.text18StyleW500.copyWith(),
                      fillColor: kWhite,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomButton(
              text: 'Confirm',
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
    ));
  }
}
