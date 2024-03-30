import 'package:flutter/material.dart';
import 'package:nonton_id/style/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.appColors.backgroundColor,
      body: Center(
        child: Text(
          'Home Page',
          style: AppStyle.appFont.bodyMediumStyleWhite,
        ),
      ),
    );
  }
}
