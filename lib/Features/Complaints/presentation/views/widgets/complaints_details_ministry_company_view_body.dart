
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/widgets/body_widget.dart';
import 'package:depi_hapd/Features/Complaints/presentation/views/widgets/user_info.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ComplaintsDetailsMinistryCompanyViewBody extends StatelessWidget {
  const ComplaintsDetailsMinistryCompanyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'details Complaints',
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
                    const UserInfo(),
                    const SizedBox(height: 16),
                    BodyWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
