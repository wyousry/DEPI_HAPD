import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/widgets/item_of_track.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopicTracksMinistryViewBody extends StatelessWidget {
  const TopicTracksMinistryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Mobile App',
              addCompany: true,
              edgeInsets:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              onTap: () {
                GoRouter.of(context)
                    .push(AppRouter.kAddTopicTracksMinistryView);
              },
              leading: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kWhite,
                  )),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    ItemOfTrack(
                      text: 'Java',
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kSubTopicTracksMinistryView,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    const ItemOfTrack(text: 'Kotlin'),
                    const SizedBox(height: 20),
                    const ItemOfTrack(text: 'Android'),
                    const SizedBox(height: 20),
                    const ItemOfTrack(text: 'Dart'),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
