import 'package:depi_hapd/Features/Home/presentation/views/widgets/curved_nav_bar.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/home_company_view_body.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/student_company_view.dart';
import 'package:depi_hapd/Features/TracksCourses/presentation/views/tracks_company_view.dart';
import 'package:depi_hapd/constant.dart';
import 'package:flutter/material.dart';

class HomeCompanyView extends StatefulWidget {
  const HomeCompanyView({super.key});

  @override
  State<HomeCompanyView> createState() => _HomeStudentViewState();
}

class _HomeStudentViewState extends State<HomeCompanyView> {
  final List<dynamic> viewsList = const [
    StudentCompanyView(),
    HomeCompanyViewBody(),
    TracksCompanyView() 
  ];

  int _currentIndex = 1; // Home is selected by default

  // Update the icons based on the current index
  List<Widget> itemsCompanyList() {
    return [
      const Icon(Icons.groups_outlined, color: kGreenAccentColor, size: 30),
      Icon(Icons.home_outlined,
          color: kGreenAccentColor,
          size: _currentIndex == 1 ? 50 : 35), // dynamic size for home icon
      const Icon(Icons.format_list_bulleted_outlined,
          color: kGreenAccentColor, size: 30),
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
          itemsList: itemsCompanyList(),
        ));
  }
}
