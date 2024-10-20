import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/details_course_student_view_body.dart';
import 'package:flutter/material.dart';

class DetailsCourseStudentView extends StatelessWidget {
  const DetailsCourseStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DetailsCourseStudentViewBody(),
      ),
    );
  }
}
