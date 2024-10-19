import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Complaints/presentation/views/widgets/complaint_card.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ComplaintsMinistryCompanyViewBody extends StatelessWidget {
  const ComplaintsMinistryCompanyViewBody({super.key});

  final List<Map<String, dynamic>> complaints = const [
    {
      'from': 'Muhammed Abdullah',
      'subject': 'Complaint',
      'date': '6/10/2024',
      'isUnread': true,
    },
    {
      'from': 'Youssef Ekrami',
      'subject': 'Complaint',
      'date': '6/10/2024',
      'isUnread': true,
    },
    {
      'from': 'Ahmed Abdelwab',
      'subject': 'Suggestion',
      'date': '6/10/2024',
      'isUnread': false,
    },
    {
      'from': 'Youssef ',
      'subject': 'Suggestion',
      'date': '6/10/2024',
      'isUnread': false,
    },
    {
      'from': 'Aalaa Abdullah',
      'subject': 'Suggestion',
      'date': '6/10/2024',
      'isUnread': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Complaints',
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
              child: ListView.builder(
                itemCount: complaints.length,
                itemBuilder: (context, index) {
                  return ComplaintCard(
                    from: complaints[index]['from'],
                    subject: complaints[index]['subject'],
                    date: complaints[index]['date'],
                    isUnread: complaints[index]['isUnread'],
                    onTap: () {
                      GoRouter.of(context)
                          .push(AppRouter.kComplaintsDetailsMinistryView);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => ComplaintsPart2()));
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
