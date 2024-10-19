import 'package:depi_lms/Features/Announcement/presentation/views/widgets/body_announcement.dart';
import 'package:depi_lms/Features/Announcement/presentation/views/widgets/part1_of_body_of_announcement_detils.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetalisAnnouncementStudentViewBody extends StatelessWidget {
  const DetalisAnnouncementStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'details Announcement',
              edgeInsets: const EdgeInsets.only(top: 7, bottom: 7, left: 16),
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.kCreateAnnouncementMinistryView);
              },
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
                  const Part1OfBodyOfAnnouncementDetils(),
                  const SizedBox(height: 25),
                  BodyAnnouncement(
                    widget: Text(
                      'We are excited to invite you to our upcoming Online Education Meeting scheduled for Saturday, 12th October 2024. This interactive session is designed to help you enhance your skills and knowledge, with a focus on practical learning experiences.\n📅 Date: 12/10/2024 ⏰ Start Time: 10:00 AM ⏰ End Time: 12:30 PM\nDuring the meeting, we will cover a range of valuable topics, including:\nEffective Time Management for Students: Learn how to prioritize tasks and manage your schedule efficiently.\nProject-Based Learning: Engage in a hands-on mini-project to apply the concepts you’ve learned.',
                      style: Styles.text15Stylew600,
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
