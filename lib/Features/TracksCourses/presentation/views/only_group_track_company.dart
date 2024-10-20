import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/only_group_track_company_body.dart';
import 'package:flutter/material.dart';

class OnlyGroupTrackCompany extends StatelessWidget {
  const OnlyGroupTrackCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OnlyGroupTrackCompanyBody(),
      ),
    );
  }
}
