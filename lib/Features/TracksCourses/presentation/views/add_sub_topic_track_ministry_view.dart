import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/add_sub_topic_track_ministry_view_body.dart';
import 'package:flutter/material.dart';

class AddSubTopicTrackMinistryView extends StatelessWidget {
  const AddSubTopicTrackMinistryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AddSubTopicTrackMinistryViewBody(),
      ),
    );
  }
}
