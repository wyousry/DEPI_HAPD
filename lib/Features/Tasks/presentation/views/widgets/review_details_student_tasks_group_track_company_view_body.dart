import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/assets.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewDetailsStudentTasksGroupTrackCompanyViewBody
    extends StatelessWidget {
  const ReviewDetailsStudentTasksGroupTrackCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        children: [
          AppBarListTile(
            title: 'Task details',
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
          const SizedBox(height: 20),
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
                        TaskCard(
                          title: "Task 1 Solution",
                          textStyle: Styles.text18StyleW600,
                          assetImage: AssetsData.pdfPic,
                          onTap: () {
                            // GoRouter.of(context).push(
                            //     '${AppRouter.kTasksDoneView}?itemCount=12&titleAppBar=Technical');
                          },
                        ),
                        const SizedBox(height: 15),
                        TaskCard(
                          title: "Task 1 Code",
                          textStyle: Styles.text18StyleW600,
                          assetImage: AssetsData.ziptPic,
                          onTap: () {
                            // GoRouter.of(context).push(
                            //     '${AppRouter.kTasksDoneView}?itemCount=12&titleAppBar=Technical');
                          },
                        ),
                        const SizedBox(height: 80),
                        CustomTextFormField(
                          onChanged: (p0) {},
                          labelText: 'Grade',
                          fillColor: kGrey.shade200,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: CustomButton(
                      text: 'Submit',
                      backgroundColor: kGreenAccentColor,
                      textStyle: Styles.text25StyleW800.copyWith(color: kWhite),
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: kGreenAccentColor),
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
