import 'package:depi_hapd/Features/Announcement/presentation/views/announcement_minstry_view.dart';
import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/companies_ministry_view.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/curved_nav_bar.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/home_ministry_view_body.dart';
import 'package:depi_hapd/Features/Setting/presentation/views/setting_ministry_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/tracks_ministry_view.dart';
import 'package:depi_hapd/constant.dart';
import 'package:flutter/material.dart';

class HomeMinistryView extends StatefulWidget {
  const HomeMinistryView({super.key});

  @override
  State<HomeMinistryView> createState() => _HomeStudentViewState();
}

class _HomeStudentViewState extends State<HomeMinistryView> {
  final List<dynamic> viewsList = const [
    TracksMinistryView(),
    CompaniesMinistryView(),
    HomeMinistryViewBody(),
    AnnouncementMinstryView(),
    SettingMinistryView(),
  ];

  int _currentIndex = 2; // Home is selected by default

  // Update the icons based on the current index
  List<Widget> itemsMinistryList() {
    return [
      const Icon(Icons.format_list_bulleted,
          color: kGreenAccentColor, size: 30),
      const Icon(Icons.factory, color: kGreenAccentColor, size: 30),
      Icon(Icons.home_outlined,
          color: kGreenAccentColor,
          size: _currentIndex == 2 ? 50 : 35), // dynamic size for home icon
      const Icon(Icons.notification_add, color: kGreenAccentColor, size: 30),
      const Icon(Icons.settings, color: kGreenAccentColor, size: 30),
    ];
  }

  void onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: viewsList.elementAt(_currentIndex),
        ),
        bottomNavigationBar: CurvedNavBar(
          onTap: onTap,
          currentIndex: _currentIndex,
          itemsList: itemsMinistryList(),
        ));
  }
}
