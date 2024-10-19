import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class CurvedNavBar extends StatelessWidget {
  const CurvedNavBar(
      {super.key,
      required this.currentIndex,
      this.onTap,
      required this.itemsList});

  final int currentIndex;
  final void Function(int)? onTap;
  final List<Widget> itemsList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 65, // Height should match the CurvedNavigationBar
          decoration: const BoxDecoration(
            color: kWhite,
            // gradient: LinearGradient(
            //   colors: [
            //     Color(0xff0FAB7D).withOpacity(.3),
            //     Color(0xff00BCD4).withOpacity(.3)
            //   ],
            //   begin: Alignment.topLeft,
            //   end: Alignment.topRight,
            // ),
          ),
        ),
        CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: kGreenAccentColor
              .withOpacity(.3), // Color of the actual navigation bar curve
          buttonBackgroundColor:
              kGreenAccentColor.withOpacity(.3), // Color of selected item
          height: 55, // Adjust as needed
          animationDuration: const Duration(milliseconds: 250),
          items: itemsList,
          index: currentIndex,
          onTap: onTap,
        ),
      ],
    );
  }
}
