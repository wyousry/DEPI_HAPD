import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_shadow.dart';
import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.onChanged,
    this.labelStyle,
    required this.labelText,
    this.obscure = false,
    this.fillColor,
    this.color,
    this.borderRadius,
    this.margin,
    this.padding,
  });

  // String? hintText;
  final TextStyle? labelStyle;
  final String? labelText;

  final Function(String)? onChanged;

  final bool? obscure;

  final Icon? prefixIcon, suffixIcon;

  final Color? fillColor, color;
  final BorderRadius? borderRadius;

  final EdgeInsets? margin, padding;

  @override
  Widget build(BuildContext context) {
    // Material(
    // borderRadius: BorderRadius.circular(9),
    // color: const Color(0xffECEFF1),
    // elevation: 7.0,
    // shadowColor: Colors.grey,
    // child:
    return CustomShadow(
      borderRadius: borderRadius,
      margin: margin,
      padding: padding,
      color: color,
      child: TextFormField(
        obscureText: obscure!,
        onChanged: onChanged,
        style: const TextStyle(
            color: kGreenColor, fontSize: 18, fontWeight: FontWeight.w600),
        cursorColor: kGreenAccentColor,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // hintText: hintText,
          // hintStyle: hintStyle,
          labelText: labelText,
          labelStyle: labelStyle,
          filled: true,
          fillColor: fillColor,

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: kGrey.shade200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: kGrey.shade200),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: BorderSide(color: kGrey.shade200),
          ),
        ),
      ),
    );
  }
}
