import 'package:depi_hapd/Features/StudentsCompany/presentation/views/widgets/detalid_student_company_view_body.dart';
import 'package:flutter/material.dart';

class DetalidStudentCompanyView extends StatelessWidget {
  const DetalidStudentCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DetalidStudentCompanyViewBody(),
      ),
    );
  }
}