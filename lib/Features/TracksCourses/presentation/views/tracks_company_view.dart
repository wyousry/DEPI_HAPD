import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/tracks_company_view_body.dart';
import 'package:flutter/material.dart';

class TracksCompanyView extends StatelessWidget {
  const TracksCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TracksCompanyViewBody(),
      ),
    );
  }
}
