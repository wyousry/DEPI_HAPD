
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AnnouncementCardListViewItem extends StatelessWidget {
  const AnnouncementCardListViewItem(
      {super.key,
      required this.to,
      required this.date,
      this.goRouterLink,
      this.blue,
      this.cancle,
      required this.subject});

  final String to, subject;
  final String date;
  final String? goRouterLink;
  final bool? blue, cancle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goRouterLink != null
          ? () {
              GoRouter.of(context).push(goRouterLink!);
            }
          : null,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.only(bottom: 15, left: 18, right: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        'To : ',
                        style: Styles.text25StyleW800,
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          to,
                          style: Styles.text18StyleW600,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        'Subject : ',
                        style: Styles.text25StyleW800,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 200,
                        child: Text(
                          subject,
                          style: Styles.text18StyleW600,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 11,
              bottom: 5,
              child: Text(
                date,
                style: Styles.text18StyleW500.copyWith(color: kGrey.shade600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
