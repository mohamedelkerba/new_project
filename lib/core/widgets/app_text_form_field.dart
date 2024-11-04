import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/core/theming/styles.dart';

import '../theming/colors.dart';

class AppTextFormField extends StatelessWidget {

  final EdgeInsetsGeometry ? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder ? enabledBorder;
  final TextStyle ? inputTextStyle;
  final TextStyle ? hintStyle;
  final String ? hintText;
  final bool ? isObsecureText;
  final Widget ? suffixIcon;
  final Color ? fIllColor;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObsecureText,
    this.suffixIcon,
    this.fIllColor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:InputDecoration(
        fillColor: fIllColor??  ColorsManager.moreLightGray,
        filled: true,
        isDense: true , // كأنه default padding
          contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w,vertical: 18.h ),

        hintStyle:hintStyle??  TextStyles.font14GrayReqular,
        hintText: hintText,
        suffixIcon: suffixIcon ,
        focusedBorder: focusedBorder ?? OutlineInputBorder(
            borderSide: const BorderSide(color: ColorsManager.primaryColor,width: 1.3  ) ,
            borderRadius: BorderRadius.circular(16)
        ),

        enabledBorder: enabledBorder ?? OutlineInputBorder(
          borderSide: const  BorderSide(color: ColorsManager.defaultBorderColor,width: 1.3   ) ,
          borderRadius: BorderRadius.circular(16)
        ),

        errorBorder: OutlineInputBorder(
            borderSide: const  BorderSide(color: ColorsManager.errorColor,width: 1.3   ) ,
            borderRadius: BorderRadius.circular(16)
        ),
      ),
      obscureText: isObsecureText ?? false,
      style:TextStyles.font14DarkReqular,
    );
  }
}
