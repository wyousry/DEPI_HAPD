import 'package:depi_lms/Features/Announcement/presentation/views/widgets/detalis_announcement_student_view_body.dart';
import 'package:flutter/material.dart';

class DetalisAnnouncementStudentView extends StatelessWidget {
  const DetalisAnnouncementStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: DetalisAnnouncementStudentViewBody(),
    ));
  }
}
