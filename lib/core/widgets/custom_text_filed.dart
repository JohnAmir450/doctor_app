import 'package:doctor_app/core/theming/colors.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final String hintText;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final Color? backgroundColor;
  final Color? suffixIconColor;

  const CustomTextField(
      {super.key,
      this.contentPadding,
      this.suffixIcon,
      this.enabledBorder,
      this.focusedBorder,
      this.inputTextStyle,
      this.hintTextStyle,
      required this.hintText,
      this.isObscureText,
      this.backgroundColor,
      this.keyboardType, this.suffixIconColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font15DarkBlueMedium,
      cursorColor: ColorsManager.mainBlue,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorsManager.moreLighterGrey,
        filled: true,
        hintStyle: hintTextStyle ?? TextStyles.font14GreyRegular,
        isDense: false,
        hintText: hintText,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor?? ColorsManager.mainBlue,
        hoverColor: ColorsManager.mainBlue,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:
            focusedBorder ?? customOutlineInputBorder(ColorsManager.mainBlue),
        enabledBorder:
            enabledBorder ?? customOutlineInputBorder(ColorsManager.lightGrey),
      ),
    );
  }

  OutlineInputBorder customOutlineInputBorder(Color color) =>
      OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: color,
          ));
}
