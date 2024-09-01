import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGrayE => BoxDecoration(
        color: appTheme.gray200E5,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
// Gold decorations
  static BoxDecoration get gold => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.4, 0.5),
          end: Alignment(0.15, 0),
          colors: [
            theme.colorScheme.primary.withOpacity(0),
            theme.colorScheme.primary
          ],
        ),
      );
// Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        border: Border.all(
          color: appTheme.gray80001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray40001 => BoxDecoration();
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        border: Border.all(
          color: appTheme.lightGreen300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        color: appTheme.gray30002,
      );
  static BoxDecoration get outline2 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder130 => BorderRadius.circular(
        130.h,
      );
  static BorderRadius get circleBorder196 => BorderRadius.circular(
        196.h,
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder56 => BorderRadius.circular(
        56.h,
      );
}
