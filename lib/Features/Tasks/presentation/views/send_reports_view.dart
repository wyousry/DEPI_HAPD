import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/send_reports_view_body.dart';
import 'package:flutter/material.dart';

class SendReportsView extends StatelessWidget {
  const SendReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SendReportsViewBody(),
      ),
    );
  }
}
