import 'package:depi_hapd/Features/Complaints/presentation/views/widgets/complaints_details_ministry_company_view_body.dart';
import 'package:flutter/material.dart';

class ComplaintsDetailsMinistryView extends StatelessWidget {
  const ComplaintsDetailsMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ComplaintsDetailsMinistryCompanyViewBody(),
      ),
    );
  }
}
