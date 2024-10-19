import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/detalis_announcement_ministry_view_body.dart';
import 'package:flutter/material.dart';

class DetalisAnnouncementMinistryView extends StatelessWidget {
  const DetalisAnnouncementMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DetalisAnnouncementMinistryViewBody(),
      ),
    );
  }
}
