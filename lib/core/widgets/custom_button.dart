import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.btnText,
      this.textStyle,
      this.backgroundColor,
      this.padding,
      this.borderRadius, this.width, this.height});
  final void Function() onPressed;
  final String btnText;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.circular(16.r)) ,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: height?.h??52.h,
      minWidth: width?.w?? double.infinity,
      padding:
          padding ??  EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      color: backgroundColor ?? AppColors.primaryColor,
      onPressed: onPressed,
      child: Text(
        btnText,
        style: textStyle ?? Styles.font16SemiBoldWhite,
      ),
    );
  }
}
