import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/add_dialog.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/widgets/item_of_track.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GroupsTrackComponyViewBody extends StatelessWidget {
  const GroupsTrackComponyViewBody({super.key});

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
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AddDialog(
                      title: 'Group Name',
                      titleOfAppBar: 'Add Group',
                    );
                  },
                );
                // GoRouter.of(context).push(AppRouter.kAddTracksMinistryView);
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
            const SizedBox(height: 25),
            CustomTextFormField(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              borderRadius: BorderRadius.circular(11),
              prefixIcon: const Icon(Icons.search, color: Colors.black54),
              onChanged: (p0) {},
              labelText: 'Search...',
              labelStyle: Styles.text18StyleW500.copyWith(),
              fillColor: kGrey.shade200,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    ItemOfTrack(
                      text: 'CAI1_SWD4_S9d',
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kOnlyGroupTrackCompany,
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    const ItemOfTrack(text: 'CAI1_SWD4_S8e'),
                    const SizedBox(height: 20),
                    const ItemOfTrack(text: 'CAI1_SWD4_S7f'),
                    const SizedBox(height: 20),
                    const ItemOfTrack(text: 'CAI1_SWD4_S6d'),
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
