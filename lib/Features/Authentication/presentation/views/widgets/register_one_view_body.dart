import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/drob_down_menu.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/logo_image.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterOneViewBody extends StatelessWidget {
  const RegisterOneViewBody({super.key});

  final List<DropdownMenuEntry> genderList = const [
    DropdownMenuEntry(value: 'Male', label: "Male"),
    DropdownMenuEntry(value: 'Female', label: "Female"),
  ];
  final List<DropdownMenuEntry> governmentList = const [
    DropdownMenuEntry(value: 'Cairo', label: "Cairo"),
    DropdownMenuEntry(value: 'Qalubia', label: "Qalubia"),
    DropdownMenuEntry(value: 'Sharquia', label: "Sharquia"),
  ];
  final List<DropdownMenuEntry> cityList = const [
    DropdownMenuEntry(value: 'Cairo', label: "Cairo"),
    DropdownMenuEntry(value: 'Qalubia', label: "Qalubia"),
    DropdownMenuEntry(value: 'Sharquia', label: "Sharquia"),
  ];

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: LogoImage(),
                    ),
                    Text(
                      'Register',
                      style: Styles.textStyle20,
                    ),
                    const SizedBox(height: 14),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Full name in Arabic',
                      labelStyle:
                          Styles.text15Stylew400.copyWith(color: kGreenColor),
                      prefixIcon: const Icon(
                        Icons.account_circle_outlined,
                        size: 33,
                        color: kGreenColor,
                      ),
                      fillColor: kGrey.shade200,
                    ),
                    const SizedBox(height: 13),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Full name in English',
                      labelStyle:
                          Styles.text15Stylew400.copyWith(color: kGreenColor),
                      prefixIcon: const Icon(
                        Icons.account_circle_outlined,
                        size: 33,
                        color: kGreenColor,
                      ),
                      fillColor: kGrey.shade200,
                    ),
                    const SizedBox(height: 13),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'National ID',
                      labelStyle:
                          Styles.text15Stylew400.copyWith(color: kGreenColor),
                      prefixIcon: const Icon(
                        Icons.contact_mail_outlined,
                        size: 33,
                        color: kGreenColor,
                      ),
                      fillColor: kGrey.shade200,
                    ),
                    const SizedBox(height: 13),
                    CustomTextFormField(
                      onChanged: (p0) {},
                      labelText: 'Date of birth',
                      labelStyle:
                          Styles.text15Stylew400.copyWith(color: kGreenColor),
                      prefixIcon: const Icon(
                        Icons.calendar_month_outlined,
                        size: 33,
                        color: kGreenColor,
                      ),
                      suffixIcon: const Icon(
                        Icons.calendar_today_outlined,
                        color: kGreenColor,
                      ),
                      fillColor: kGrey.shade200,
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropDownMenu(
                      borderRadius: BorderRadius.circular(16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none),
                      hintStyle: Styles.text18StyleW500.copyWith(color: kWhite),
                      suffixIconColor: kWhite,
                      textColor: kWhite,
                      hintText: 'Gender',
                      width: 150,
                      drobDownList: genderList,
                      height: 55,
                      fillColor: kGreenAccentColor,
                    ),
                    const SizedBox(width: 10),
                    DropDownMenu(
                      borderRadius: BorderRadius.circular(16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none),
                      hintStyle: Styles.text18StyleW500.copyWith(color: kWhite),
                      suffixIconColor: kWhite,
                      textColor: kWhite,
                      hintText: 'Government',
                      width: 200,
                      drobDownList: governmentList,
                      height: 55,
                      fillColor: kGreenAccentColor,
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 13),
                  child: CustomButton(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kRegisterTwoView);
                    },
                    text: 'Continue',
                    backgroundColor: kGreenAccentColor,
                    textStyle:
                        Styles.text22StyleW600.copyWith(color: Colors.white),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 9,
          top: 5,
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
      ]),
    );
  }
}
