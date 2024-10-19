import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Part1OfBodyOfAnnouncementDetils extends StatelessWidget {
  const Part1OfBodyOfAnnouncementDetils({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      color: kGrey.shade200,
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 20,
            backgroundColor: Colors.white,
            child: Image.asset(AssetsData.depiLogo),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Text(
              'Online meeting in the next weekend 12/10/2024 ( announcement topic ). ',
              style: Styles.text18StyleW600,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          )
        ],
      ),
    );
  }
}

class Assets {}
