import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/recieve_announcement_student_view_body.dart';
import 'package:flutter/material.dart';

class RecieveAnnouncementStudentView extends StatelessWidget {
  const RecieveAnnouncementStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RecieveAnnouncementStudentViewBody(),
      ),
    );
  }
}
