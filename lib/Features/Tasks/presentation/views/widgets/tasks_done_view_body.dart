import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card_done.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TasksDoneViewBody extends StatelessWidget {
  const TasksDoneViewBody(
      {super.key, required this.itemCount, required this.titleAppBar});

  final int itemCount;
  final String titleAppBar;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: titleAppBar,
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
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  return TaskCardDone(
                    title: "Task${itemCount - index}",
                    assetImage:'assets/images/assignment_img.png',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
