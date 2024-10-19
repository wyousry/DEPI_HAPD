import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/recording_technical_courses_student_view_body.dart';
import 'package:flutter/material.dart';

class RecordingTechnicalCoursesStudentView extends StatelessWidget {
  const RecordingTechnicalCoursesStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RecordingTechnicalCoursesStudentViewBody(),
      ),
    );
  }
}
