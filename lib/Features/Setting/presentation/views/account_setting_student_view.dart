import 'package:depi_hapd/Features/Setting/presentation/views/widgets/account_setting_student_view_body.dart';
import 'package:flutter/material.dart';

class AccountSettingStudentView extends StatelessWidget {
  const AccountSettingStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AccountSettingStudentViewBody(),
      ),
    );
  }
}
