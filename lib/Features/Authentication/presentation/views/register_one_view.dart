import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/register_one_view_body.dart';
import 'package:flutter/material.dart';

class RegisterOneView extends StatelessWidget {
  const RegisterOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: RegisterOneViewBody(),
      ),
    );
  }
}
