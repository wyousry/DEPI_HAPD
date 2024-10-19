import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/register_two_view_body.dart';
import 'package:flutter/material.dart';

class RegisterTwoView extends StatelessWidget {
  const RegisterTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RegisterTwoViewBody(),
      ),
    );
  }
}
