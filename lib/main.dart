import 'package:device_preview/device_preview.dart';
import 'package:event_dart/All.dart';
import 'package:event_dart/Packages.dart';
import 'package:event_dart/Venues.dart';
import 'package:event_dart/categories.dart';
import 'package:event_dart/empty.dart';
import 'package:event_dart/photographer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Onboardingscreens/screen1.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Onboarding1(),
        );
      },
    );
  }
}
