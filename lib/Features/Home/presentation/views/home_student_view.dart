import 'package:depi_lms/Features/Home/presentation/views/widgets/curved_nav_bar.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/home_student_view_body.dart';
import 'package:depi_lms/Features/Setting/presentation/views/setting_student_view.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/tasks_student_view.dart';
import 'package:depi_lms/Features/TracksCourses/presentation/views/courses_student_view.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class HomeStudentView extends StatefulWidget {
  const HomeStudentView({super.key});

  @override
  State<HomeStudentView> createState() => _HomeStudentViewState();
}

class _HomeStudentViewState extends State<HomeStudentView> {
  final List<dynamic> viewsList = const [
    CoursesStudentView(), //ranking
    CoursesStudentView(),
    HomeStudentViewBody(),
    TasksStudentView(),
    SettingStudentView(),
  ];

  int _currentIndex = 2; // Home is selected by default

  // Update the icons based on the current index
  List<Widget> itemsStudentList() {
    return [
      const Icon(Icons.emoji_events_outlined,
          color: kGreenAccentColor, size: 30),
      const Icon(Icons.library_books, color: kGreenAccentColor, size: 30),
      Icon(Icons.home_outlined,
          color: kGreenAccentColor,
          size: _currentIndex == 2 ? 50 : 35), // dynamic size for home icon
      const Icon(Icons.task, color: kGreenAccentColor, size: 30),
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
          // child: HomeStudentViewBody(),
          child: viewsList.elementAt(_currentIndex),
        ),
        bottomNavigationBar: CurvedNavBar(
          onTap: onTap,
          currentIndex: _currentIndex,
          itemsList: itemsStudentList(),
        ));
  }
}
