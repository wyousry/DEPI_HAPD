import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/sub_task_card.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReceivedTasksGroupTrackCompanyViewBody extends StatelessWidget {
  const ReceivedTasksGroupTrackCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            // const SizedBox(height: 15),
            AppBarListTile(
              title: 'Received Task',
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
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 14',
                        ),
                        SubTaskCard(
                          title: "Task 13",
                          date: "25/9/2024",
                          goRouterLink:
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 13',
                        ),
                      ],
                      onTap: () {
                        GoRouter.of(context).push(
                            '${AppRouter.kTasksDoneView}?itemCount=12&titleAppBar=Technical');
                      },
                    ),
                    TaskCard(
                      title: "Soft Skills",
                      assetImage: AssetsData.softSkillsPic,
                      textStyle: Styles.text32StyleW400,
                      trailing: true,
                      subTasks: const [
                        SubTaskCard(
                          title: "Task 3",
                          date: "27/9/2024",
                          goRouterLink:
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 3',
                        ),
                        SubTaskCard(
                          title: "Task 2",
                          date: "25/9/2024",
                          goRouterLink:
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 2',
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
                          title: "Task 2",
                          date: "27/9/2024",
                          goRouterLink:
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 2',
                        ),
                        SubTaskCard(
                          title: "Task 1",
                          date: "25/9/2024",
                          goRouterLink:
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 1',
                        ),
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
                          date: "27/9/2024",
                          goRouterLink:
                              '${AppRouter.kReviewStudentTasksGroupTrackCompanyView}?taskName=Task 1',
                        ),
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
