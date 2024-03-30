import 'package:flutter/material.dart';
import 'package:nonton_id/style/app_style.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.appColors.backgroundColor,
      body: Center(
        child: Text(
          'Tiket Page',
          style: AppStyle.appFont.bodyMediumStyleWhite,
        ),
      ),
    );
  }
}
