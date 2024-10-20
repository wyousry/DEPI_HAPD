import 'package:depi_hapd/Features/StudentsCompany/presentation/views/widgets/student_company_view_body.dart';
import 'package:flutter/material.dart';

class StudentCompanyView extends StatelessWidget {
  const StudentCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: StudentCompanyViewBody(),
      ),
    );
  }
}
