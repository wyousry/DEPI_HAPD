import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo_impl.dart';
import 'package:depi_hapd/Features/Authentication/presentation/view_models/featured_register_cubit/featured_register_cubit.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/register_three_view_body.dart';
import 'package:depi_hapd/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterThreeView extends StatelessWidget {
  const RegisterThreeView(
      {super.key,
      this.arabicName,
      this.englishName,
      this.nationalID,
      this.dateOfBirth,
      this.gender,
      this.government,
      this.email,
      this.password,
      this.phone,
      this.linkedIn});
  final String? arabicName;
  final String? englishName;
  final String? nationalID;
  final String? dateOfBirth;
  final String? gender;
  final String? government;

  final String? email;
  final String? password;
  final String? phone;
  final String? linkedIn;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeaturedRegisterCubit(getIt.get<RegisterReboImpl>()),
      child: Scaffold(
        body: SafeArea(
          child: RegisterThreeViewBody(
            arabicName: arabicName,
            englishName: englishName,
            nationalID: nationalID,
            dateOfBirth: dateOfBirth,
            gender: gender,
            government: government,
            email: email,
            password: password,
            phone: phone,
            linkedIn: linkedIn,
          ),
        ),
      ),
    );
  }
}
