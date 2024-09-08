import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineLightGreenTL10 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightGreen300,
        side: BorderSide(
          color: appTheme.lightGreen300,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // Gradient button style
  static BoxDecoration get gradientGrayToGrayTL10Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.lightGreen300,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(-0.08, 1),
          end: Alignment(1.12, 0),
          colors: [appTheme.gray700, appTheme.gray700],
        ),
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0),
      side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.transparent)));
}
