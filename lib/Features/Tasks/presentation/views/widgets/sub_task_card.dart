import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubTaskCard extends StatelessWidget {
  const SubTaskCard(
      {super.key,
      required this.title,
      required this.date,
      this.goRouterLink,
      this.blue,
      this.cancle});

  final String title;
  final String date;
  final String? goRouterLink;
  final bool? blue, cancle;

  Widget? blueOrCancelIcon() {
    if (blue == true) {
      return Container(
        width: 17,
        height: 17,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      );
    } else if (cancle == true) {
      return Positioned(
        top: -10,
        right: -10,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cancel_outlined,
            size: 30,
          ),
        ),
      );
    }
    return null;
  }

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
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: blueOrCancelIcon() ?? Container(),
            ),
            Positioned(
              right: 7,
              bottom: 3,
              child: Text(
                date,
                style: const TextStyle(color: kGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
