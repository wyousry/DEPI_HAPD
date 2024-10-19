import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Home/presentation/views/widgets/app_bar_list_tile.dart';
import 'package:depi_lms/Features/Tasks/presentation/views/widgets/task_card.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SendRecieveViewBody extends StatelessWidget {
  const SendRecieveViewBody(
      {super.key,
      required this.appBarName,
      required this.txtOne,
      required this.txtTwo,
      required this.goRouterLink1,
      required this.goRouterLink2});

  final String appBarName, txtOne, txtTwo, goRouterLink1, goRouterLink2;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
      child: Column(
        children: [
          AppBarListTile(
            title: appBarName, 
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TaskCard(
                  title: txtOne, 
                  assetImage: AssetsData.assignmentPic,
                  textStyle: Styles.text22StyleW600,
                  onTap: () {
                    GoRouter.of(context).push(
                        goRouterLink1); 
                  },
                ),
                const SizedBox(height: 20),
                TaskCard(
                  title: txtTwo, 
                  assetImage: AssetsData.assignmentPic,
                  textStyle: Styles.text22StyleW600,
                  onTap: () {
                    GoRouter.of(context).push(
                        goRouterLink2); 
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
