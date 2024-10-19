import 'package:depi_lms/Features/Tasks/presentation/views/widgets/material_three_view_body.dart';
import 'package:flutter/material.dart';

class MaterialThreeView extends StatelessWidget {
  const MaterialThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MaterialThreeViewBody(),
      ),
    );
  }
}
