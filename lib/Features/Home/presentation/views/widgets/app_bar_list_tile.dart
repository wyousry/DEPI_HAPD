import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppBarListTile extends StatelessWidget {
  const AppBarListTile({
    super.key,
    required this.title,
    this.subTitle,
    this.leading,
    this.edgeInsets,
    this.bill,
    this.addCompany,
    this.onTap,
  });

  final Widget? leading;
  final String? title, subTitle;
  final EdgeInsets? edgeInsets;
  final bool? bill, addCompany;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      color: kGreenAccentColor,
      borderRadius: BorderRadius.circular(22),
      padding: edgeInsets,
      child: ListTile(
        leading: leading,
        title: Text(
          title!,
          style: Styles.textStyle25.copyWith(color: kWhite),
        ),
        subtitle: subTitle != null
            ? Text(
                subTitle!,
                style: Styles.textStyle25.copyWith(color: kWhite),
              )
            : null, // Render nothing if subTitle is null
        trailing: trailing(context, bill, addCompany),

        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(22),
        ),
        style: ListTileStyle.drawer,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        tileColor: kGreenAccentColor,
      ),
    );
  }

  Widget? trailing(BuildContext context, bool? bill, bool? addCompany) {
    if (bill == true) {
      return IconButton(
        onPressed: onTap,
        icon: const Icon(
          Icons.notifications_none,
          color: kWhite,
          size: 40,
        ),
      );
    } else if (addCompany == true) {
      return SizedBox(
          width: 80,
          height: 40,
          child: CustomButton(
            text: 'Add',
            textStyle: Styles.text15Stylew600,
            onTap: onTap,
            backgroundColor: kWhite,
            borderRadius: BorderRadius.circular(16),
            leading: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ));
    }
    return null;
  }
}
