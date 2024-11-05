import 'package:device_preview/device_preview.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/theming/light_theme.dart';
import 'package:doctor_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
    enabled: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter().generateRoute,
        home: const OnboardingScreen(),
        theme: lightTheme,
      ),
    );
  }
}
