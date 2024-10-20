import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/material_two_view_body.dart';
import 'package:flutter/material.dart';

class MaterialTwoView extends StatelessWidget {
  const MaterialTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MaterialTwoViewBody(),
      ),
    );
  }
}
