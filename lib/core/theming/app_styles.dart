import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font13RegularBlack = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.mediumGreyColor,
  );
  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  
  static TextStyle font24BoldBlack = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);
  static TextStyle font32BoldBlue = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor);
}
