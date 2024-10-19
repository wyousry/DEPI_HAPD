import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FromAndSubjectAnnouncement extends StatelessWidget {
  const FromAndSubjectAnnouncement({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomShadow(
          color: kGrey.shade200,
          borderRadius: BorderRadius.circular(16),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.circle,
                  color: Color(0xff00BCD4),
                ),
              ),
              Row(
                children: [
                  Text(
                    'From : ',
                    style: Styles.textStyle25.copyWith(color: kText),
                  ),
                  Text(
                    'Ministry of communication',
                    style: Styles.text18StyleW600,
                  ),
                  // const Spacer(),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Subject : ',
                    style: Styles.textStyle25.copyWith(color: kText),
                  ),
                  Text(
                    'Mobile application track ',
                    style: Styles.text18StyleW600,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.bottomRight,
                child: Text(
                  /*"${record.date} "*/
                  "1/7/2025",
                  style: Styles.text15Stylew600,
                ),
              ),
            ],
          )),
    );
  }
}
