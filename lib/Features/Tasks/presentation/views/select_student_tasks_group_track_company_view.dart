import 'package:depi_lms/Features/Tasks/presentation/views/widgets/select_student_tasks_group_track_company_view_body.dart';
import 'package:flutter/material.dart';

class SelectStudentTasksGroupTrackCompanyView extends StatelessWidget {
  const SelectStudentTasksGroupTrackCompanyView({super.key, required this.appbarName});

  final String appbarName;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SelectStudentTasksGroupTrackCompanyViewBody(
          appbarName: appbarName,
        ),
      ),
    );
  }
}
