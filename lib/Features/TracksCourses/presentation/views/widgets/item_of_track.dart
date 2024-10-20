import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ItemOfTrack extends StatelessWidget {
  const ItemOfTrack({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomShadow(
            borderRadius: BorderRadius.circular(16),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(vertical: 35),
            color: kGrey.shade200,
            child: Center(
              child: Text(
                text,
                style: Styles.textStyle20,
              ),
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cancel_outlined,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
