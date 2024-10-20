import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/tasks_student_view_body.dart';
import 'package:flutter/material.dart';

class TasksStudentView extends StatelessWidget {
  const TasksStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TasksStudentViewBody(),
      ),
    );
  }
}
