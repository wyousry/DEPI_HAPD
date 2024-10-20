import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/register_two_view_body.dart';
import 'package:flutter/material.dart';

class RegisterTwoView extends StatelessWidget {
  const RegisterTwoView(
      {super.key,
      this.arabicName,
      this.englishName,
      this.nationalID,
      this.dateOfBirth,
      this.gender,
      this.government});
  final String? arabicName;
  final String? englishName;
  final String? nationalID;
  final String? dateOfBirth;
  final String? gender;
  final String? government;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RegisterTwoViewBody(
          arabicName: arabicName,
          englishName: englishName,
          nationalID: nationalID,
          dateOfBirth: dateOfBirth,
          gender: gender,
          government: government,
        ),
      ),
    );
  }
}
