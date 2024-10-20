import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AttachedTasksFilesViewBody extends StatelessWidget {
  const AttachedTasksFilesViewBody({super.key, required this.taskName});
  final String taskName;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(children: [
          AppBarListTile(
            title: taskName,
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
          const SizedBox(height: 25),
          Expanded(
            child: SingleChildScrollView(
              child: CustomShadow(
                borderRadius: BorderRadius.circular(16),
                color: kGrey.shade200,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/image.png"),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgroundColor: kWhite,
                      borderRadius: BorderRadius.circular(11),
                      textStyle: Styles.text18StyleW500,
                      text: 'Presentation',
                      leading: const Icon(
                        Icons.folder_open_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
