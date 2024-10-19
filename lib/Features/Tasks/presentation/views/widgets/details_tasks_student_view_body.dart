import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsTasksStudentViewBody extends StatelessWidget {
  const DetailsTasksStudentViewBody(
      {super.key,
      required this.taskName,
      required this.startDate,
      required this.deadline});

  final String taskName;
  final String startDate;
  final String deadline;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: taskName,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 25),
                    CustomShadow(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      color: kGrey.shade200,
                      borderRadius: BorderRadius.circular(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Task Name: $taskName',
                            style: Styles.textStyle23,
                          ),
                          const SizedBox(height: 15),
                          Text('Start at: $startDate',
                              style: Styles.textStyle23),
                          const SizedBox(height: 15),
                          Text(
                            'Deadline at: $deadline',
                            style: Styles.textStyle23,
                          ),
                          const SizedBox(height: 100),
                          CustomButton(
                            text: 'See Files',
                            backgroundColor: kGreenAccentColor,
                            textStyle:
                                Styles.text22StyleW600.copyWith(color: kWhite),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kGreenAccentColor),
                            onTap: () {
                              GoRouter.of(context).push(
                                  '${AppRouter.kAttachedTasksFilesView}?taskName=Task14');
                            },
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: CustomButton(
                              text: 'Solution',
                              backgroundColor: kWhite,
                              textStyle: Styles.text22StyleW600
                                  .copyWith(color: Colors.black),
                              borderRadius: BorderRadius.circular(11),
                              // border: Border.all(color: kGreenAccentColor),
                            ),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: CustomButton(
                        text: 'Submit',
                        backgroundColor: kGreenAccentColor,
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
                        textStyle:
                            Styles.text25StyleW800.copyWith(color: kWhite),
                        borderRadius: BorderRadius.circular(11),
                        border: Border.all(color: kGreenAccentColor),
                      ),
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
