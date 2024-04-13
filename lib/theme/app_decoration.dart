import 'package:flutter/material.dart';
import 'package:taskapp/core/utils/size_utils.dart';
import 'package:taskapp/theme/theme_helper.dart';

class AppDecoration {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get gradientPrimaryToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 1.5),
          end: const Alignment(1, 1),
          colors: [theme.colorScheme.primary, appTheme.teal70000],
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
