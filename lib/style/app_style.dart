import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyle {
  static AppColors appColors = const AppColors();
  static AppFont appFont = const AppFont();
  static AppMargin appMargin = const AppMargin();
}

class AppColors {
  const AppColors();

  Color get primary => const Color(0xFF6C61AF);
  Color get secondary => const Color(0xFF2F2C44);
  Color get tertiary => const Color(0xFF595669);
  Color get black => const Color(0xFF333333);
  Color get white => const Color(0xFFFEFEFE);
  Color get grey => const Color(0xFF373D43);
  Color get red => const Color(0xFFEB5757);
  Color get yellow => const Color(0xFFF2C94C);
  Color get backgroundColor => const Color(0xFF1C1A29);

  Color get textBlackColor => const Color(0xFF333333);
  Color get textGreyColor => const Color(0xFF858585);
  Color get textWhiteColor => const Color(0xFFFFFFFF);
}

class AppFont {
  const AppFont();

  String get primary => "OpenSans";
  String get secondary => "Exo";

  double get titleLarge => 24.sp;

  TextStyle get titleLargeStyleWhite {
    return TextStyle(
      fontSize: titleLarge,
      fontWeight: FontWeight.bold,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get titleLargeStyleBlack {
    return TextStyle(
      fontSize: titleLarge,
      fontWeight: FontWeight.bold,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get titleMedium => 20.sp;

  TextStyle get titleMediumStyleWhite {
    return TextStyle(
      fontSize: titleMedium,
      fontWeight: FontWeight.w600,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get titleMediumStyleBlack {
    return TextStyle(
      fontSize: titleMedium,
      fontWeight: FontWeight.w600,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get titleSmall => 17.sp;

  TextStyle get titleSmallStyleWhite {
    return TextStyle(
      fontSize: titleSmall,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get titleSmallStyleBlack {
    return TextStyle(
      fontSize: titleSmall,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get titleExSmall => 14.sp;

  TextStyle get titleExSmallStyleWhite {
    return TextStyle(
      fontSize: titleExSmall,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get titleExSmallStyleBlack {
    return TextStyle(
      fontSize: titleExSmall,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get bodyLarge => 14.sp;

  TextStyle get bodyLargeStyleWhite {
    return TextStyle(
      fontSize: bodyLarge,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get bodyLargeStyleBlack {
    return TextStyle(
      fontSize: bodyLarge,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  TextStyle get hinstStyle {
    return TextStyle(
      fontSize: bodyLarge,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.grey,
    );
  }

  TextStyle get hinstStyleWhite {
    return TextStyle(
      fontSize: bodyLarge,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get hinstStyleTertiary {
    return TextStyle(
      fontSize: bodyLarge,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.tertiary,
    );
  }

  TextStyle get bodyLargeStylePrimary {
    return TextStyle(
      fontSize: bodyLarge,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.primary,
    );
  }

  double get bodyMedium => 12.sp;

  TextStyle get bodyMediumStyleWhite {
    return TextStyle(
      fontSize: bodyMedium,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get bodyMediumStyleBlack {
    return TextStyle(
      fontSize: bodyMedium,
      fontWeight: FontWeight.w400,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get bodySmall => 10.sp;

  TextStyle get bodySmallStyleWhite {
    return TextStyle(
      fontSize: bodySmall,
      fontWeight: FontWeight.w300,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get bodySmallStyleBlack {
    return TextStyle(
      fontSize: bodySmall,
      fontWeight: FontWeight.w300,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get labelLarge => 14.sp;

  TextStyle get labelLargeStyleWhite {
    return TextStyle(
      fontSize: labelLarge,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get labelLargeStyleBlack {
    return TextStyle(
      fontSize: labelLarge,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get labelMedium => 12.sp;

  TextStyle get labelMediumStyleWhite {
    return TextStyle(
      fontSize: labelMedium,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get labelMediumStyleBlack {
    return TextStyle(
      fontSize: labelMedium,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.textBlackColor,
    );
  }

  double get labelSmall => 10.sp;

  TextStyle get labelSmallStyleWhite {
    return TextStyle(
      fontSize: labelSmall,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.white,
    );
  }

  TextStyle get labelSmallStyleBlack {
    return TextStyle(
      fontSize: labelSmall,
      fontWeight: FontWeight.w500,
      color: AppStyle.appColors.textBlackColor,
    );
  }
}

class AppMargin {
  const AppMargin();

  SizedBox get spaceExtraHeight => const SizedBox(height: 24.0);
  SizedBox get spaceExtraWidth => const SizedBox(width: 24.0);

  SizedBox get spaceNormalHeight => const SizedBox(height: 16.0);
  SizedBox get spaceNormalWidth => const SizedBox(width: 16.0);

  SizedBox get spaceLiteHeight => const SizedBox(height: 6.0);
  SizedBox get spaceLiteWidth => const SizedBox(width: 6.0);

  EdgeInsets get paddingScreen16 => const EdgeInsets.all(16);
  EdgeInsets get paddingScreen20 => const EdgeInsets.all(20);
}
