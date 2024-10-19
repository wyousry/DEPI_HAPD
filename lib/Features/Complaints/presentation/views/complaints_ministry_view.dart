import 'package:depi_lms/Features/Complaints/presentation/views/widgets/complaints_ministry_company_view_body.dart';
import 'package:flutter/material.dart';

class ComplaintsMinistryView extends StatelessWidget {
  const ComplaintsMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ComplaintsMinistryCompanyViewBody(),
      ),
    );
  }
}
