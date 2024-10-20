import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/widgets/search_bar.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/widgets/student_card.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StudentCompanyViewBody extends StatefulWidget {
  const StudentCompanyViewBody({super.key});

  @override
  State<StudentCompanyViewBody> createState() => _StudentCompanyViewBodyState();
}

class _StudentCompanyViewBodyState extends State<StudentCompanyViewBody> {
  final List<String> students = [
    'Youssef ',
    'Ahmed ',
    'Muhammed',
  ];

  bool showFilters = false;

  void toggleFilters() {
    setState(() {
      showFilters = !showFilters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            const AppBarListTile(
              title: 'Students',
              bill: true,
              edgeInsets: EdgeInsets.symmetric(vertical: 7),
            ),
            const SizedBox(height: 25),
            const SearchBarWithFilters(),
            if (showFilters) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      hint: const Text('Filter by group',
                          style: TextStyle(fontSize: 12)),
                      items: ['Group 1', 'Group 2', 'Group 3', 'Group 4']
                          .map((group) => DropdownMenuItem<String>(
                                value: group,
                                child: Text(group),
                              ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                    DropdownButton<String>(
                      hint: const Text('Filter by Track',
                          style: TextStyle(fontSize: 12)),
                      items: ['Track 1', 'Track 2', 'Track 3', 'Track 4']
                          .map((track) => DropdownMenuItem<String>(
                                value: track,
                                child: Text(track),
                              ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ],
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return StudentCard(
                    studentName: students[index],
                    onPressed: () {
                      GoRouter.of(context)
                          .push(AppRouter.kDetalidStudentCompanyView);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
