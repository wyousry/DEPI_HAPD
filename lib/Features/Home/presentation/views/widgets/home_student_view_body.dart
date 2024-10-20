import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/attendance_traking.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/complaints.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/date.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/student_tracking_system.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeStudentViewBody extends StatelessWidget {
  const HomeStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Hello',
              subTitle: 'Muhammed Ali',
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
                    child: Image.asset(AssetsData.profilePic),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    const AttendanceTraking(),
                    const SizedBox(height: 15),
                    const Date(),
                    const SizedBox(height: 15),
                    const StudentTrackingSystem(),
                    const SizedBox(height: 15),
                    Complaints(
                      iconData: Icons.add,
                      positioned: false,
                      onPressed: () {
                        GoRouter.of(context)
                            .push(AppRouter.kComplaintsStudentView);
                      },
                    ),
                    const SizedBox(height: 25),
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
