import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/Tasks/presentation/views/widgets/StudentListViewItem.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectStudentTasksGroupTrackCompanyViewBody extends StatefulWidget {
  const SelectStudentTasksGroupTrackCompanyViewBody(
      {super.key, required this.appbarName});

  final String appbarName;

  @override
  State<SelectStudentTasksGroupTrackCompanyViewBody> createState() =>
      _SelectStudentTasksGroupTrackCompanyViewBodyState();
}

class _SelectStudentTasksGroupTrackCompanyViewBodyState
    extends State<SelectStudentTasksGroupTrackCompanyViewBody> {
  final List<String> students = [
    'Muhammed Abdullah',
    'Ahmed',
    'Aalaa',
    'wafaa',
    'Youseef',
    'Youseef',
    'Youseef',
    'wafaa',
  ];

  bool selectAll = false;
  Map<String, bool> studentSelection = {};

  @override
  void initState() {
    super.initState();
    // Initialize the student selection map
    for (var student in students) {
      studentSelection[student] = false;
    }
  }

  void toggleSelectAll(bool? value) {
    setState(() {
      selectAll = value ?? false;
      for (var student in students) {
        studentSelection[student] = selectAll;
      }
    });
  }

  void toggleStudentSelection(String student, bool? value) {
    setState(() {
      studentSelection[student] = value ?? false;
      // Update the "All" checkbox state based on individual selections
      selectAll = studentSelection.values.every((isSelected) => isSelected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        children: [
          AppBarListTile(
            title: widget.appbarName,
            edgeInsets: const EdgeInsets.symmetric(vertical: 7),
            leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kWhite,
                )),
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            borderRadius: BorderRadius.circular(11),
            prefixIcon: const Icon(Icons.search, color: Colors.black54),
            onChanged: (p0) {},
            labelText: 'Search...',
            labelStyle: Styles.text18StyleW500.copyWith(),
            fillColor: kGrey.shade200,
          ),
          StudentListViewItem(
            student: 'All',
            select: true,
            height: 50,
            isChecked: selectAll,
            onChanged: toggleSelectAll,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                String student = students[index];
                return StudentListViewItem(
                  select: true,
                  student: student,
                  isChecked: studentSelection[student] ?? false,
                  onChanged: (value) {
                    toggleStudentSelection(student, value);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: CustomButton(
              text: 'Done',
              backgroundColor: kGreenAccentColor,
              textStyle: Styles.text18StyleW600.copyWith(color: kWhite),
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ));
  }
}
