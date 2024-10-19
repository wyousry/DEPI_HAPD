import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoursesStudentViewBody extends StatelessWidget {
  const CoursesStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Courses',
              bill: true,
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.kRecieveAnnouncementStudentView);
              },
              edgeInsets: const EdgeInsets.symmetric(vertical: 7),
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
                  children: [
                    const SizedBox(height: 5),
                    TaskCard(
                      title: "Technical",
                      assetImage: AssetsData.technicalPic,
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context)
                            .push(AppRouter.kDetailsCourseStudentView);
                      },
                    ),
                    TaskCard(
                      title: "Soft Skills",
                      assetImage: AssetsData.softSkillsPic,
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        // GoRouter.of(context).push(
                        //     '${AppRouter.kTasksDoneView}?itemCount=4&titleAppBar=Soft Skills');
                      },
                    ),
                    TaskCard(
                      title: "English",
                      assetImage: AssetsData.englishPic,
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        // GoRouter.of(context).push(
                        //     '${AppRouter.kTasksDoneView}?itemCount=7&titleAppBar=English');
                      },
                    ),
                    TaskCard(
                      title: "Freelance",
                      assetImage: AssetsData.freelancePic,
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        // GoRouter.of(context).push(
                        //     '${AppRouter.kTasksDoneView}?itemCount=2&titleAppBar=Freelance');
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
