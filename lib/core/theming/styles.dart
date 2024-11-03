// This TextStyles class provides a collection of reusable text styles for the app.
// It defines styles with specific font sizes, weights, and colors for consistent typography.
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/core/theming/colors.dart';

class TextStyles{
  static TextStyle font24Black700Weight = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black
  );

  static TextStyle font32PrimaryBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.primaryColor
  );
  static TextStyle font12GrayReqular = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManager.grey
  );

  static TextStyle font16WhiteSemiBold =  TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );
}