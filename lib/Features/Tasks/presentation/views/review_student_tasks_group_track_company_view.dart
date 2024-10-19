import 'package:depi_lms/Features/Tasks/presentation/views/widgets/review_student_tasks_group_track_company_view_body.dart';
import 'package:flutter/material.dart';

class ReviewStudentTasksGroupTrackCompanyView extends StatelessWidget {
  const ReviewStudentTasksGroupTrackCompanyView(
      {super.key, required this.taskName});
  final String taskName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReviewStudentTasksGroupTrackCompanyViewBody(
          taskName: taskName,
        ),
      ),
    );
  }
}
