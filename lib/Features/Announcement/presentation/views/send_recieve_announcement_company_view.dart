import 'package:depi_lms/Features/Tasks/presentation/views/widgets/send_recieve_view_body.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';

class SendRecieveAnnouncementView extends StatelessWidget {
  const SendRecieveAnnouncementView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SendRecieveViewBody(
          appBarName: 'Announcements',
          txtOne: 'Make Announcement',
          txtTwo: 'Received Announcements',
          goRouterLink1: AppRouter.kCreateAnnouncementCompanyView,
          goRouterLink2: AppRouter.kRecieveAnnouncementView,
        ),
      ),
    );
  }
}
