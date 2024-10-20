import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MaterialThreeViewBody extends StatelessWidget {
  const MaterialThreeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            AppBarListTile(
              title: 'Recordings',
              edgeInsets: const EdgeInsets.symmetric(vertical: 7),
              leading: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: kWhite,
                  )),
            ),
            const SizedBox(height: 35),
            Expanded(
              child: SingleChildScrollView(
                child: CustomShadow(
                  borderRadius: BorderRadius.circular(16),
                  margin: const EdgeInsets.symmetric(horizontal: 9),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 19),
                  color: kGrey.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        'Recordings Link',
                        style: Styles.text22StyleW600,
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        onChanged: (p0) {},
                        labelText: 'Recordings Link',
                        fillColor: kWhite,
                        labelStyle: Styles.text18StyleW500,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'File Upload',
                        style: Styles.text22StyleW600,
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        onChanged: (p0) {},
                        labelText: 'File Upload',
                        labelStyle: Styles.text18StyleW500.copyWith(),
                        suffixIcon: const Icon(
                          Icons.insert_link_outlined,
                          size: 33,
                          color: kGreenColor,
                        ),
                        fillColor: kWhite,
                      ),
                      const SizedBox(height: 11),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: CustomButton(
                text: 'Upload',
                backgroundColor: kGreenAccentColor,
                textStyle: Styles.text18StyleW600.copyWith(color: kWhite),
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  GoRouter.of(context).pop();
                },
              ),
            ),
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
