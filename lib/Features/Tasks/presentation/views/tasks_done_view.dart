import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/tasks_done_view_body.dart';
import 'package:flutter/material.dart';

class TasksDoneView extends StatelessWidget {
  const TasksDoneView(
      {super.key, required this.itemCount, required this.titleAppBar});

  final int itemCount;
  final String titleAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TasksDoneViewBody(
          itemCount: itemCount,
          titleAppBar: titleAppBar,
        ),
      ),
    );
  }
}
