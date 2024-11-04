import 'package:doctor_app/core/helpers/assets.dart';
import 'package:doctor_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogoAndTitle extends StatelessWidget {
  const DoctorLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgsDoctorLogo),
        SizedBox(width: 8.w,),
        Text('Doctor', style: Styles.font24BoldBlack),
      ],
    );
  }
}