import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_style.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    this.icon,
    this.width,
    this.height,
    this.padding = const EdgeInsets.fromLTRB(16, 12, 16, 12),
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 1.sw,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppStyle.appColors.secondary,
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 20,
              color: AppStyle.appColors.tertiary,
            ),
            SizedBox(width: 8),
          ],
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppStyle.appFont.hinstStyleTertiary,
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
                alignLabelWithHint: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
