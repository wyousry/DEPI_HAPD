import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';

import 'package:depi_lms/Features/Tasks/presentation/views/widgets/sub_task_card.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TasksStudentViewBody extends StatelessWidget {
  const TasksStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            // const SizedBox(height: 15),
            AppBarListTile(
              title: 'Tasks',
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
                    const SizedBox(height: 5),
                    TaskCard(
                      title: "Technical",
                      assetImage: AssetsData.technicalPic,
                      textStyle: Styles.text32StyleW400,
                      trailing: true,
                      subTasks: const [
                        SubTaskCard(
                            title: "Task 14",
                            date: "27/9/2024",
                            goRouterLink:
                                '${AppRouter.kDetailsTasksStudentView}?taskName=Task 14&startDate=20/8/2024&deadline=27/8/2024'),
                        SubTaskCard(
                            title: "Task 13",
                            date: "25/9/2024",
                            goRouterLink:
                                '${AppRouter.kSelectStudentTasksGroupTrackCompanyView}?taskName=Task 13&startDate=20/8/2024&deadline=27/8/2024'),
                      ],
                      onTap: () {
                        GoRouter.of(context).push(
                            '${AppRouter.kTasksDoneView}?itemCount=11&titleAppBar=Technical');
                      },
                    ),
                    TaskCard(
                      title: "Soft Skills",
                      assetImage: AssetsData.softSkillsPic,
                      textStyle: Styles.text32StyleW400,
                      trailing: true,
                      subTasks: const [
                        SubTaskCard(
                          title: "Task 4",
                          date: "20/9/2024",
                          goRouterLink:
                              '${AppRouter.kDetailsTasksStudentView}?taskName=Task 4&startDate=20/8/2024&deadline=27/8/2024',
                        ),
                      ],
                      onTap: () {
                        GoRouter.of(context).push(
                            '${AppRouter.kTasksDoneView}?itemCount=4&titleAppBar=Soft Skills');
                      },
                    ),
                    TaskCard(
                      title: "English",
                      assetImage: AssetsData.englishPic,
                      textStyle: Styles.text32StyleW400,
                      trailing: true,
                      subTasks: const [
                        SubTaskCard(
                            title: "Task 6",
                            date: "19/9/2024",
                            goRouterLink:
                                '${AppRouter.kDetailsTasksStudentView}?taskName=Task 6&startDate=20/8/2024&deadline=27/8/2024'),
                      ],
                      onTap: () {
                        GoRouter.of(context).push(
                            '${AppRouter.kTasksDoneView}?itemCount=7&titleAppBar=English');
                      },
                    ),
                    TaskCard(
                      title: "Freelance",
                      assetImage: AssetsData.freelancePic,
                      textStyle: Styles.text32StyleW400,
                      trailing: true,
                      subTasks: const [
                        SubTaskCard(
                            title: "Task 1",
                            date: "15/9/2024",
                            goRouterLink:
                                '${AppRouter.kDetailsTasksStudentView}?taskName=Task 1&startDate=20/8/2024&deadline=27/8/2024'),
                      ],
                      onTap: () {
                        GoRouter.of(context).push(
                            '${AppRouter.kTasksDoneView}?itemCount=2&titleAppBar=Freelance');
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
