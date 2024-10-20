import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DropDownMenu extends StatelessWidget {
  DropDownMenu(
      {super.key,
      this.width,
      required this.drobDownList,
      required this.hintText,
      this.height,
      this.fillColor,
      this.suffixIconColor,
      this.hintStyle,
      this.border,
      this.margin,
      this.padding,
      this.borderRadius,
      this.textColor,
       this.onSelected});

  final int? width;
  final double? height;
  final EdgeInsets? margin, padding;
  final BorderRadius? borderRadius;
  final String hintText;
  void Function(dynamic)? onSelected;
  final Color? fillColor, suffixIconColor, textColor;
  final TextStyle? hintStyle;
  final InputBorder? border;
  final List<DropdownMenuEntry> drobDownList;

  @override
  Widget build(BuildContext context) {
    return CustomShadow(
      color: fillColor,
      margin: margin,
      padding: padding,
      borderRadius: borderRadius,
      child: DropdownMenu(
        onSelected: onSelected,
        textStyle: Styles.text18StyleW500.copyWith(color: textColor),
        hintText: hintText,
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            hintStyle:
                hintStyle, //Styles.text18StyleW500.copyWith(color: Colors.white),
            fillColor: fillColor,
            suffixIconColor: suffixIconColor, //Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            constraints: BoxConstraints.tight(Size.fromHeight(height ?? 65)),
            // disabledBorder: InputBorder.none,
            border: border
            // OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(11),
            //     borderSide: BorderSide.none),
            ),
        // width: width?.toDouble() ?? double.infinity,
        width: width?.toDouble() ?? MediaQuery.of(context).size.width * .92,
        dropdownMenuEntries: drobDownList,
      ),
    );
  }
}
