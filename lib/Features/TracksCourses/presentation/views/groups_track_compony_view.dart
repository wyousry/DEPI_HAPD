import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/groups_track_compony_view_body.dart';
import 'package:flutter/material.dart';

class GroupsTrackComponyView extends StatelessWidget {
  const GroupsTrackComponyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: GroupsTrackComponyViewBody(),
      ),
    );
  }
}
