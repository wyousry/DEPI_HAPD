import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/attached_tasks_files_view_body.dart';
import 'package:flutter/material.dart';

class AttachedTasksFilesView extends StatelessWidget {
  const AttachedTasksFilesView({super.key, required this.taskName});

  final String taskName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AttachedTasksFilesViewBody(taskName: taskName),
      ),
    );
  }
}
