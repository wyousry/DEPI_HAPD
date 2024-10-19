
import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/revieve_announcements_view_body.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:flutter/material.dart';

class AnnouncementMinstryView extends StatelessWidget {
  const AnnouncementMinstryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RecieveAnnouncementsViewBody(
          addCompany: true,
          goRouterLink: AppRouter.kCreateAnnouncementMinistryView,
        ),
      ),
    );
  }
}
