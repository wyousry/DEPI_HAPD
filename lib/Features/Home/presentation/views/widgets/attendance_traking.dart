import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/attendance_traking_item.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class AttendanceTraking extends StatelessWidget {
  const AttendanceTraking({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 7),
      color: kWhite,
      borderRadius: BorderRadius.circular(16),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AttendanceTrakingItem(
              text: 'Technical',
              progress: 10,
              total: 10,
              backForeGroundColor: Color(0xff76FF03),
            ),
            SizedBox(width: 10),
            AttendanceTrakingItem(
              text: 'English',
              progress: 5,
              total: 10,
              backForeGroundColor: Color(0xff00A9B5),
            ),
            SizedBox(width: 10),
            AttendanceTrakingItem(
              text: 'Freelance',
              progress: 5,
              total: 10,
              backForeGroundColor: Color(0xffFF9100),
            ),
            SizedBox(width: 10),
            AttendanceTrakingItem(
              text: 'Soft skills',
              progress: 5,
              total: 10,
              backForeGroundColor: Color(0xff3D5AFE),
            ),
          ],
        ),
      ),
    );
  }
}
