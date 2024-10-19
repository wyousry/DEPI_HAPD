import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/sub_task_card.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubTopicTracksMinistryViewBody extends StatelessWidget {
  const SubTopicTracksMinistryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarListTile(
            addCompany: true,
            onTap: () {
              GoRouter.of(context)
                  .push(AppRouter.kAddSubTopicTrackMinistryView);
            },
            title: 'Java',
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
          const SizedBox(height: 30),
          Stack(
            children: [
              CustomShadow(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                margin: const EdgeInsets.symmetric(vertical: 20),
                color: kGrey.shade200,
                borderRadius: BorderRadius.circular(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Basics',
                          style: Styles.textStyle20,
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 140,
                          height: 40,
                          child: CustomButton(
                            text: 'Add Tobic',
                            textStyle: Styles.text15Stylew600,
                            onTap: () {},
                            backgroundColor: kWhite,
                            borderRadius: BorderRadius.circular(16),
                            leading: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 420,
                      child: Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              SubTaskCard(
                                cancle: true,
                                title: "Data Type",
                                date: "27/9/2024",
                              ),
                              SubTaskCard(
                                cancle: true,
                                title: "Variables",
                                date: "27/9/2024",
                              ),
                              SubTaskCard(
                                cancle: true,
                                title: "Loops",
                                date: "27/9/2024",
                              ),
                              SubTaskCard(
                                cancle: true,
                                title: "Functions",
                                date: "27/9/2024",
                              ),
                              SubTaskCard(
                                cancle: true,
                                title: "Conditions",
                                date: "27/9/2024",
                              ),
                              // SizedBox(height: 200),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: -9,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cancel_outlined,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
