import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nonton_id/router/router.dart';

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

    return MaterialApp.router(
      title: 'NONTON·ID',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: AppStyle.appColors.primary,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppStyle.appColors.secondary,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppStyle.appColors.yellow,
          unselectedItemColor: AppStyle.appColors.white,
        ),
      ),
      // debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
