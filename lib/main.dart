import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nonton_id/screens/splash_screen.dart';

import 'style/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive design
    ScreenUtil.init(context);

    return MaterialApp(
      title: 'NONTON·ID',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppStyle.appColors.primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppStyle.appColors.primary,
          secondary: AppStyle.appColors.secondary,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: AppStyle.appColors.primary,
        ),
      ),
      // debugShowCheckedModeBanner: false,
      home: SpalshScreen(),
    );
  }
}
