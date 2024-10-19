import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Setting/presentation/views/widgets/custom_header_with_text_feild.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountSettingStudentViewBody extends StatelessWidget {
  const AccountSettingStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarListTile(
              title: 'Edit Profile',
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
            const SizedBox(height: 25),
            const CircleAvatar(
              maxRadius: 80,
              backgroundImage: AssetImage(AssetsData.profilePic2),
            ),
            const SizedBox(height: 9),
            Text(
              'Student ID :21035562',
              style: Styles.text22StyleW600,
            ),
            const SizedBox(height: 20),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Basic Information',
                    style: Styles.textStyle23,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 19),
                      CustomHeaderWithTextFeild(header: 'Full Name'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Full Name(Arabic)'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Gender'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Birth Date'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'National ID'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Government'),
                      SizedBox(height: 14),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Contact Data',
                    style: Styles.textStyle23,
                  ),
                  const Column(
                    children: [
                      SizedBox(height: 19),
                      CustomHeaderWithTextFeild(header: 'Email'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Phone'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Linkedin'),
                      SizedBox(height: 14),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Educational Data',
                    style: Styles.textStyle23,
                  ),
                  const Column(
                    children: [
                      SizedBox(height: 19),
                      CustomHeaderWithTextFeild(header: 'University'),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'College '),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Specialization '),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(header: 'Appreciation '),
                      SizedBox(height: 14),
                      CustomHeaderWithTextFeild(
                          header: 'Training Governorate  '),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
