import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/add_topic_tracks_ministry_view_body.dart';
import 'package:flutter/material.dart';

class AddTopicTracksMinistryView extends StatelessWidget {
  const AddTopicTracksMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: AddTopicTracksMinistryViewBody(),
    ));
  }
}
