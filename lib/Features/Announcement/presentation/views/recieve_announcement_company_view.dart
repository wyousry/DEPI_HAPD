
import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/revieve_announcements_view_body.dart';
import 'package:depi_hapd/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecieveAnnouncementView extends StatelessWidget {
  const RecieveAnnouncementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RecieveAnnouncementsViewBody(
          
          leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: kWhite,
              )),
        ),
      ),
    );
  }
}
