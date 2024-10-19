import 'package:depi_lms/Features/Setting/presentation/views/widgets/setting_student_view_body.dart';
import 'package:flutter/material.dart';

class SettingStudentView extends StatelessWidget {
  const SettingStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SettingStudentViewBody(),
      ),
    );
  }
}
