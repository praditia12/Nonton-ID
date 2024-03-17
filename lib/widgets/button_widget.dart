import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_style.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppStyle.appColors.primary,
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          width: 1.sw,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 24.sp,
                  color: AppStyle.appColors.white,
                ),
                SizedBox(width: 10.w),
              ],
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppStyle.appColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
