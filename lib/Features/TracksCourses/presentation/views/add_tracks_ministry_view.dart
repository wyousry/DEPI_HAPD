import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/add_tracks_ministry_view_body.dart';
import 'package:flutter/material.dart';

class AddTracksMinistryView extends StatelessWidget {
  const AddTracksMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AddTracksMinistryViewBody(),
      ),
    );
  }
}
