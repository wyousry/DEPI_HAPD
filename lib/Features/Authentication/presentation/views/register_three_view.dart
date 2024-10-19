import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/register_three_view_body.dart';
import 'package:flutter/material.dart';

class RegisterThreeView extends StatelessWidget {
  const RegisterThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RegisterThreeViewBody(),
      ),
    );
  }
}
