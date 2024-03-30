import 'package:flutter/material.dart';
import 'package:nonton_id/style/app_style.dart';

class BioskopPage extends StatelessWidget {
  const BioskopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.appColors.backgroundColor,
      body: Center(
        child: Text(
          'Bioskop Page',
          style: AppStyle.appFont.bodyMediumStyleWhite,
        ),
      ),
    );
  }
}
