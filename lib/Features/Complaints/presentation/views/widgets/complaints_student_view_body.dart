import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/body_announcement.dart';
import 'package:depi_hapd/Features/Announcement/presentation/views/widgets/to_and_subject_drop_down.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class ComplaintsStudentViewBody extends StatefulWidget {
  const ComplaintsStudentViewBody({super.key});

  @override
  _ComplaintsStudentViewBodyState createState() => _ComplaintsStudentViewBodyState();
}

class _ComplaintsStudentViewBodyState extends State<ComplaintsStudentViewBody> {
  String selectedTo = "company";
  String selectedSubject = "complaint";
  String bodyContent = "";

  Future<void> submitComplaint() async {
    final url = Uri.parse("https://gecko-logical-officially.ngrok-free.app/student/addComplaint");

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'to': selectedTo,
        'subject': selectedSubject,
        'body': bodyContent,
        'date': DateFormat('d/M/yyyy').format(DateTime.now()),
      }),
    );

    if (response.statusCode == 200) {
      // Handle success
      print("Complaint submitted successfully.");
      GoRouter.of(context).pop();
    } else {
      // Handle error
      print("Failed to submit complaint: ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Create Complaint',
              edgeInsets: const EdgeInsets.only(top: 7, bottom: 7, left: 16),
              leading: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kWhite,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ToAndSubjectDropDown(
                      toDropDownList: const [
                        DropdownMenuEntry(value: "company", label: 'Company'),
                        DropdownMenuEntry(value: "ministry", label: 'Ministry'),
                      ],
                      subjectDropDownList: const [
                        DropdownMenuEntry(value: "suggestion", label: 'Suggestion'),
                        DropdownMenuEntry(value: "complaint", label: 'Complaint'),
                      ],
                      onToChanged: (value) {
                        setState(() {
                          selectedTo = value;
                        });
                      },
                      onSubjectChanged: (value) {
                        setState(() {
                          selectedSubject = value;
                        });
                      },
                    ),
                    const SizedBox(height: 25),
                    BodyAnnouncement(
                      widget: CustomTextFormField(
                        onChanged: (value) {
                          setState(() {
                            bodyContent = value;
                          });
                        },
                        labelText: '',
                        padding: const EdgeInsets.symmetric(vertical: 150),
                        borderRadius: BorderRadius.circular(16),
                        color: kWhite,
                        fillColor: kWhite,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: CustomButton(
                        text: 'Submit',
                        backgroundColor: kGreenAccentColor,
                        textStyle: Styles.text22StyleW600.copyWith(color: kWhite),
                        borderRadius: BorderRadius.circular(16),
                        onTap: submitComplaint, // Call the submitComplaint function
                      ),
                    ),
                    const SizedBox(height: 30),
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
