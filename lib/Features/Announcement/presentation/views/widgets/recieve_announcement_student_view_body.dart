
import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/announcement_card_list_view.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/from_and_subject_announcement.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecieveAnnouncementStudentViewBody extends StatelessWidget {
  const RecieveAnnouncementStudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Widget> announcementCardList = [
      FromAndSubjectAnnouncement(onTap: () {
        GoRouter.of(context).push(
          AppRouter.kDetalisAnnouncementStudentView,
        );
      }),
      FromAndSubjectAnnouncement(onTap: () {
        GoRouter.of(context).push(
          AppRouter.kDetalisAnnouncementStudentView,
        );
      }),
      FromAndSubjectAnnouncement(onTap: () {
        GoRouter.of(context).push(
          AppRouter.kDetalisAnnouncementStudentView,
        );
      }),
    ];

    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Announcements',
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
                ),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: AnnouncementCardListView(
                announcementCardList: announcementCardList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
