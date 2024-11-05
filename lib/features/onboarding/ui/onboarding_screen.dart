import 'package:doctor_app/core/helpers/navigation_extension.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theming/app_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/ui/widgets/doctor_logo_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const DoctorLogoAndTitle(),
            SizedBox(
              height: 30.h,
            ),
            const DoctorImageAndText(),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: Styles.font13RegularBlack,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: CustomButton(
                  onPressed: () => context.pushReplacementNamed(Routes.login),
                  btnText: 'Get Started'),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      )),
    );
  }
}
