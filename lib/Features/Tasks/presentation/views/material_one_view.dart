import 'package:depi_lms/Features/Tasks/presentation/views/widgets/material_one_view_body.dart';
import 'package:flutter/material.dart';

class MaterialOneView extends StatelessWidget {
  const MaterialOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MaterialOneViewBody(),
      ),
    );
  }
}
