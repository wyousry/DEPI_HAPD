import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/custom_header_with_text_feild.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/assets.dart';
import 'package:depi_hapd/core/utils/styles.dart';
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
                      CustomHeaderWithText(
                        header: 'Full Name',
                        text:
                            'Wafaa Yousry Ahmed Kohia                                                          ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Full Name(Arabic)',
                        text:
                            'وفاء يسري أحمد كوهيه                                                                      ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Gender',
                        text:
                            'Female                                                                                    ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Birth Date',
                        text:
                            '9/2/2004                                                                                    ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'National ID',
                        text:
                            '30402091600566                                                               ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Government',
                        text:
                            'Gharbia                                                                                    ',
                      ),
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
                      CustomHeaderWithText(
                        header: 'Email',
                        text:
                            'Kwhyhwfa@gmail.com                                                          ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Phone',
                        text:
                            '01156374361                                                                          ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Linkedin',
                        text:
                            'https://www.linkedin.com/in/وفاء-كوهيه-99546724a',
                      ),
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
                      CustomHeaderWithText(
                        header: 'University',
                        text:
                            'Al-azhar University                                                          ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'College ',
                        text:
                            'Engineering                                                                                                 ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Specialization ',
                        text:
                            'Systems&Computers Engineering                                                          ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Appreciation ',
                        text:
                            'Very Good                                                                                                                                     ',
                      ),
                      SizedBox(height: 14),
                      CustomHeaderWithText(
                        header: 'Training Governorate  ',
                        text:
                            'Cairo                                                                                     ',
                      ),
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
