
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

class CreateAnnouncementViewBody extends StatelessWidget {
  const CreateAnnouncementViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Create Announcement',
              edgeInsets: const EdgeInsets.only(top: 7, bottom: 7, left: 16),
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ToAndSubjectDropDown(
                        toDropDownList: const [
                          DropdownMenuEntry(value: 'companies', label: 'Companies'),
                          DropdownMenuEntry(value: 'all_students', label: 'All Students'),
                          DropdownMenuEntry(value: 'mobile_app', label: 'Mobile App'),
                          DropdownMenuEntry(value: 'web_development', label: 'Web Development'),
                          DropdownMenuEntry(value: 'data_science', label: 'Data Science'),
                          DropdownMenuEntry(value: 'ai', label: 'AI'),
                        ],
                        subjectDropDownList: const [
                          DropdownMenuEntry(value: 'math', label: 'Math'),
                          DropdownMenuEntry(value: 'science', label: 'Science'),
                          DropdownMenuEntry(value: 'history', label: 'History'),
                          DropdownMenuEntry(value: 'geography', label: 'Geography'),
                          DropdownMenuEntry(value: 'physics', label: 'Physics'),
                          DropdownMenuEntry(value: 'chemistry', label: 'Chemistry'),
                        ],
                      onToChanged: (value) { },
                      onSubjectChanged: (value) { },
                    ),
                    const SizedBox(height: 25),
                    BodyAnnouncement(
                      widget: CustomTextFormField(
                        onChanged: (p0) {},
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
                        textStyle:
                            Styles.text22StyleW600.copyWith(color: kWhite),
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          GoRouter.of(context).pop();
                        },
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
