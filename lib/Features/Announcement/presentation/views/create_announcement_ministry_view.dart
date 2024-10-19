import 'package:depi_lms/Features/Announcement/presentation/views/widgets/create_announcement_view_body.dart';
import 'package:flutter/material.dart';

class CreateAnnouncementMinistryView extends StatelessWidget {
  const CreateAnnouncementMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CreateAnnouncementViewBody(),
      ),
    );
  }
}
