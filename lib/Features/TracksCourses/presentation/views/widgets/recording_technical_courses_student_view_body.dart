import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/assets.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecordingTechnicalCoursesStudentViewBody extends StatelessWidget {
  const RecordingTechnicalCoursesStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Recordings',
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
                      title: "Session_name_1",
                      assetImage: AssetsData.videoPic,
                      textStyle: Styles.text22StyleW600,
                      onTap: () {
                        // GoRouter.of(context)
                        //     .push(AppRouter.kDetailsCourseStudentView);
                      },
                    ),
                    TaskCard(
                      title: "Session_name_2",
                      assetImage: AssetsData.videoPic,
                      textStyle: Styles.text22StyleW600,
                      onTap: () {
                        // GoRouter.of(context).push(
                        //     '${AppRouter.kTasksDoneView}?itemCount=4&titleAppBar=Soft Skills');
                      },
                    ),
                    TaskCard(
                      title: "Session_name_3",
                      assetImage: AssetsData.videoPic,
                      textStyle: Styles.text22StyleW600,
                      onTap: () {
                        // GoRouter.of(context).push(
                        //     '${AppRouter.kTasksDoneView}?itemCount=7&titleAppBar=English');
                      },
                    ),
                    TaskCard(
                      title: "Session_name_4",
                      assetImage: AssetsData.videoPic,
                      textStyle: Styles.text22StyleW600,
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
