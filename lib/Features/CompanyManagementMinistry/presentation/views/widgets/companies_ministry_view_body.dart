import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/CompanyManagementMinistry/presentation/views/widgets/company_ministry_list_view.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompaniesMinistryViewBody extends StatelessWidget {
  const CompaniesMinistryViewBody({super.key});
//**      */
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarListTile(
            title: 'Companies',
            addCompany: true,
            edgeInsets:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            onTap: () {
              GoRouter.of(context).push(AppRouter.kAddCompanyToMinistryView);
            },
          ),
          const SizedBox(height: 30),
          Text(
            'Companies',
            style: Styles.text32StyleW400,
          ),
          const SizedBox(height: 15),
          const Expanded(
            child: CompanyMinistryListView(),
          ),
        ],
      ),
    ));
  }
}
