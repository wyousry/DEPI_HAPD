import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnlyGroupTrackCompanyBody extends StatelessWidget {
  const OnlyGroupTrackCompanyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'CAI1_SWD4_S9d',
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
            const SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'Attendance',
                      backgroundColor: kGrey.shade200,
                      borderRadius: BorderRadius.circular(16),
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kAttendnceView);
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Online Sessions',
                      backgroundColor: kGrey.shade200,
                      borderRadius: BorderRadius.circular(16),
                      textStyle: Styles.text32StyleW400,
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Material',
                      backgroundColor: kGrey.shade200,
                      borderRadius: BorderRadius.circular(16),
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kMaterialOneView);
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Assignments',
                      backgroundColor: kGrey.shade200,
                      borderRadius: BorderRadius.circular(16),
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kAssignmentsCompanyView);
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Times & Places',
                      backgroundColor: kGrey.shade200,
                      borderRadius: BorderRadius.circular(16),
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kTimeAndPlacesView);
                      },
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Send Reports',
                      backgroundColor: kGrey.shade200,
                      borderRadius: BorderRadius.circular(16),
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kSendReportsView);
                      },
                    ),
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
