import 'package:flutter/material.dart';

import '../style/app_style.dart';

class TextLogoComponent extends StatelessWidget {
  const TextLogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "NONTON",
          style: TextStyle(
            fontFamily: AppStyle.appFont.secondary,
            fontSize: 40.0,
            color: AppStyle.appColors.white,
          ),
        ),
        Text(
          "·ID",
          style: TextStyle(
            fontFamily: AppStyle.appFont.secondary,
            fontSize: 40.0,
            color: AppStyle.appColors.yellow,
          ),
        ),
      ],
    );
  }
}
