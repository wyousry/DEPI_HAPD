import 'package:depi_lms/Features/Tasks/presentation/views/widgets/received_tasks_group_track_company_view_body.dart';
import 'package:flutter/material.dart';

class ReceivedTasksGroupTrackCompanyView extends StatelessWidget {
  const ReceivedTasksGroupTrackCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ReceivedTasksGroupTrackCompanyViewBody(),
      ),
    );
  }
}