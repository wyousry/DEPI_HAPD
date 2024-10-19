import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/topic_tracks_ministry_view_body.dart';
import 'package:flutter/material.dart';

class TopicTracksMinistryView extends StatelessWidget {
  const TopicTracksMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: TopicTracksMinistryViewBody(),
      ),
    );
  }
}
