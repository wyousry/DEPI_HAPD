import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/custom_basic_row_in_setting.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/custom_row_down_basic_row_in_setting.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/widgets/part_of_more.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SettingMinistryViewBody extends StatefulWidget {
  const SettingMinistryViewBody({super.key});

  @override
  _SettingMinistryViewBodyState createState() =>
      _SettingMinistryViewBodyState();
}

class _SettingMinistryViewBodyState extends State<SettingMinistryViewBody> {
  bool isSwitched = false; // State for the Switch

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            const AppBarListTile(
              title: 'Setting',
              edgeInsets: EdgeInsets.only(top: 7, bottom: 7, left: 16),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 25),
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
