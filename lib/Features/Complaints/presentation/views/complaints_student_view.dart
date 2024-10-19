import 'package:depi_hapd/Features/Complaints/presentation/views/widgets/complaints_student_view_body.dart';
import 'package:flutter/material.dart';

class ComplaintsStudentView extends StatelessWidget {
  const ComplaintsStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ComplaintsStudentViewBody(),
      ),
    );
  }
}
