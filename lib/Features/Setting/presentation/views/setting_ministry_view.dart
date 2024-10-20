import 'package:depi_hapd/Features/Setting/presentation/views/widgets/setting_ministry_view_body.dart';
import 'package:flutter/material.dart';

class SettingMinistryView extends StatelessWidget {
  const SettingMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SettingMinistryViewBody(),
      ),
    );
  }
}
