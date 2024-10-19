import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/logo_image.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterThreeViewBody extends StatelessWidget {
  const RegisterThreeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: LogoImage(),
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        onChanged: (v) {},
                        prefixIcon: const Icon(
                          Icons.account_balance_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'University',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {},
                        prefixIcon: const Icon(
                          Icons.school_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Faculty',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {},
                        prefixIcon: const Icon(
                          Icons.history_edu_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Major',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {},
                        prefixIcon: const Icon(
                          Icons.workspace_premium_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Degree',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (v) {},
                        prefixIcon: const Icon(
                          Icons.assured_workload_outlined,
                          color: kGreenColor,
                        ),
                        labelText: 'Government Of Training',
                        labelStyle: const TextStyle(
                            color: kGreenColor, fontWeight: FontWeight.w200),
                        fillColor: kGrey.shade200,
                      ),
                      const SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: CustomButton(
                          onTap: () {
                            GoRouter.of(context).push(AppRouter.kLoginView);
                          },
                          text: 'Register',
                          backgroundColor: kGreenAccentColor,
                          textStyle: Styles.text22StyleW600
                              .copyWith(color: Colors.white),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            left: 9,
            top: 10,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          ),
        ],
      ),
    );
  }
}
