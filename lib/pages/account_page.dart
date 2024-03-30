import 'package:flutter/material.dart';
import 'package:nonton_id/style/app_style.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.appColors.backgroundColor,
      body: Center(
        child: Text(
          'Akun Page',
          style: AppStyle.appFont.bodyMediumStyleWhite,
        ),
      ),
    );
  }
}
