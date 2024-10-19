import 'package:depi_lms/Features/Tasks/presentation/views/widgets/review_details_student_tasks_group_track_company_view_body.dart';
import 'package:flutter/material.dart';

class ReviewDetailsStudentTasksGroupTrackCompanyView extends StatelessWidget {
  const ReviewDetailsStudentTasksGroupTrackCompanyView(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ReviewDetailsStudentTasksGroupTrackCompanyViewBody(),
      ),
    );
  }
}
