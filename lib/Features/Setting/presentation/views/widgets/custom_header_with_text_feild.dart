import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderWithTextFeild extends StatelessWidget {
  const CustomHeaderWithTextFeild({super.key, required this.header});

  final String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: Styles.text18StyleW500,
          ),
          const SizedBox(height: 10),
          CustomTextFormField(
            onChanged: (p0) {},
            labelText: header,
            borderRadius: BorderRadius.circular(16),
            fillColor: kGrey.shade200,
            labelStyle: Styles.text15Stylew600,
          )
        ],
      ),
    );
  }
}
