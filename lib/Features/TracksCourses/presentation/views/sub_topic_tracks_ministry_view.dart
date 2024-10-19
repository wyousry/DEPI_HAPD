import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/sub_topic_tracks_ministry_view_body.dart';
import 'package:flutter/material.dart';

class SubTopicTracksMinistryView extends StatelessWidget {
  const SubTopicTracksMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SubTopicTracksMinistryViewBody(),
      ),
    );
  }
}
