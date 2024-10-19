import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/courses_student_view_body.dart';
import 'package:flutter/material.dart';

class CoursesStudentView extends StatelessWidget {
  const CoursesStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CoursesStudentViewBody(),
      ),
    );
  }
}
