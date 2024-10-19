import 'package:depi_lms/Features/Tasks/presentation/views/widgets/attendnce_view_body.dart';
import 'package:flutter/material.dart';

class AttendnceView extends StatelessWidget {
  const AttendnceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AttendnceViewBody(),
      ),
    );
  }
}
