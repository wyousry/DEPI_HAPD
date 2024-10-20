import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/custom_basic_row_in_setting.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/custom_row_down_basic_row_in_setting.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/part_of_account.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/part_of_more.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/assets.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingStudentViewBody extends StatefulWidget {
  const SettingStudentViewBody({super.key});

  @override
  State<SettingStudentViewBody> createState() => _SettingStudentViewBodyState();
}

class _SettingStudentViewBodyState extends State<SettingStudentViewBody> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Setting',
              edgeInsets: const EdgeInsets.symmetric(vertical: 7),
              bill: true,
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.kRecieveAnnouncementStudentView);
              },
              leading: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRouter.kAccountSettingStudentView);
                },
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      AssetsData.profilePic,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  // padding: EdgeInsets.only(top: 120, right: 10, left: 10),
                  children: [
                    const SizedBox(height: 25),
                    PartOfAccount(
                      onPressed: () {
                        GoRouter.of(context).push(
                          AppRouter.kAccountSettingStudentView,
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    const CustomBasicRowInSetting(
                      text: 'Notification',
                      icon: Icons.notifications_none_sharp,
                    ),
                    const SizedBox(height: 6),
                    const Divider(),
                    CustomRowDownBasicRowInSetting(
                      text: 'App notification',
                      widget: Transform.scale(
                        scale: 0.7,
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          autofocus: true,
                          activeColor: kWhite,
                          activeTrackColor: kGreenAccentColor,
                          inactiveTrackColor: kGrey,
                          inactiveThumbColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const PartOfMore(),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 115),
                      child: CustomButton(
                        text: 'Logout',
                        height: 40,
                        backgroundColor: kGreenAccentColor,
                        borderRadius: BorderRadius.circular(7),
                        textStyle:
                            Styles.text22StyleW600.copyWith(color: kWhite),
                        leading: const Icon(
                          Icons.logout,
                          color: Colors.white,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
