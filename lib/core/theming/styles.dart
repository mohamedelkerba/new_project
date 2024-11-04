// This TextStyles class provides a collection of reusable text styles for the app.
// It defines styles with specific font sizes, weights, and colors for consistent typography.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/core/theming/colors.dart';
import 'font_weight_helper.dart';

class TextStyles{
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black
  );

  static TextStyle font32PrimaryBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.primaryColor
  );
  static TextStyle font12GrayReqular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.normal,
      color: ColorsManager.grey
  );

  static TextStyle font16WhiteSemiBold =  TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font14GrayReqular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.normal,
      color: ColorsManager.lightGray
  );

  static TextStyle font14DarkReqular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorsManager.darkBlue
  );
}