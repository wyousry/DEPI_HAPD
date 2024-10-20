import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/details_tasks_student_view_body.dart';
import 'package:flutter/material.dart';

class DetailsTasksStudentView extends StatelessWidget {
  const DetailsTasksStudentView(
      {super.key,
      required this.taskName,
      required this.startDate,
      required this.deadline});

  final String taskName;
  final String startDate;
  final String deadline;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: DetailsTasksStudentViewBody(
              taskName: taskName, startDate: startDate, deadline: deadline)),
    );
  }
}
