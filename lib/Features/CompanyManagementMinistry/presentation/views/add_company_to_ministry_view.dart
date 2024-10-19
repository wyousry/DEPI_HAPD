import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/widgets/add_company_to_ministry_view_body.dart';
import 'package:flutter/material.dart';

class AddCompanyToMinistryView extends StatelessWidget {
  const AddCompanyToMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AddCompanyToMinistryViewBody(),
      ),
    );
  }
}
