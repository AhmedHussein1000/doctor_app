import 'package:doctor_app/core/helpers/assets.dart';
import 'package:doctor_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.svgsDoctorBackgroundLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.14, 0.4],
          )),
          child: Image.asset(Assets.imagesOnboardingDoctor),
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: 10,
            child: Text(
              textAlign: TextAlign.center,
              'Best Doctor\nAppointment App',
              style: Styles.font32BoldBlue.copyWith(height: 1.4),
            ))
      ],
    );
  }
}
