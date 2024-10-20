import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/StudentsCompany/presentation/views/widgets/student_detail.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetalidStudentCompanyViewBody extends StatelessWidget {
  const DetalidStudentCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarListTile(
              title: 'Students',
              bill: true,
              edgeInsets: EdgeInsets.symmetric(vertical: 7),
              leading: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kWhite,
                  )),
            ),
            const SizedBox(height: 22),
            Text(
              "Student Data",
              style: Styles.text18StyleW600,
            ),
            const SizedBox(height: 22),
            const StudentDataCard(),
            const Spacer(),
            const StudentButtons(),
          ],
        ),
      ),
    );
  }
}
