import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/widgets/companies_ministry_view_body.dart';
import 'package:flutter/material.dart';

class CompaniesMinistryView extends StatelessWidget {
  const CompaniesMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CompaniesMinistryViewBody(),
      ),
    );
  }
}
