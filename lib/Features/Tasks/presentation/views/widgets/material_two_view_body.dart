import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/app_router.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MaterialTwoViewBody extends StatelessWidget {
  const MaterialTwoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
        child: Column(
          children: [
            // const SizedBox(height: 15),
            AppBarListTile(
              title: 'Material Technical',
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  // padding: EdgeInsets.only(top: 120, right: 10, left: 10),
                  children: [
                    const SizedBox(height: 5),
                    TaskCard(
                      title: "Recordings",
                      assetImage: AssetsData.recPic,
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kMaterialThreeView);
                      },
                    ),
                    TaskCard(
                      title: "Material",
                      assetImage: AssetsData.matPic,
                      textStyle: Styles.text32StyleW400,
                      onTap: () {
                        // GoRouter.of(context).push(
                        //     '${AppRouter.kTasksDoneView}?itemCount=4&titleAppBar=Soft Skills');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
