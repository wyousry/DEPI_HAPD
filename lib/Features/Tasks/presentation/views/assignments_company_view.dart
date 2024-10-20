import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/send_recieve_view_body.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:flutter/material.dart';

class AssignmentsCompanyView extends StatelessWidget {
  const AssignmentsCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SendRecieveViewBody(
        appBarName: 'Assignments',
        txtOne: 'Send Assignment',
        txtTwo: 'Receive Assignment',
        goRouterLink1: AppRouter.kSendingTasksGroupTrackCompanyView,
        goRouterLink2: AppRouter.kReceivedTasksGroupTrackCompanyView,
      )),
    );
  }
}
