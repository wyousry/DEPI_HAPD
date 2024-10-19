import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/create_announcement_view_body.dart';
import 'package:flutter/material.dart';

class CreateAnnouncementCompanyView extends StatelessWidget {
  const CreateAnnouncementCompanyView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: CreateAnnouncementViewBody(),
      ),
    );
  }
}