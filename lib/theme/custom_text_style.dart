import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get aBSALOM {
    return copyWith(
      fontFamily: 'ABSALOM',
    );
  }

  TextStyle get absinthe {
    return copyWith(
      fontFamily: 'Absinthe',
    );
  }

  TextStyle get aparajita {
    return copyWith(
      fontFamily: 'Aparajita',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get abrilFatface {
    return copyWith(
      fontFamily: 'Abril Fatface',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Abril text style
  static get abrilFatfaceLightgreen300 => TextStyle(
        color: appTheme.lightGreen300,
        fontSize: 160.fSize,
        fontWeight: FontWeight.w400,
      ).abrilFatface;
// Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeABSALOMGray70001 =>
      theme.textTheme.bodyLarge!.aBSALOM.copyWith(
        color: appTheme.gray70001,
        fontSize: 18.fSize,
      );
  static get bodyLargeABSALOMLightgreen300 =>
      theme.textTheme.bodyLarge!.aBSALOM.copyWith(
        color: appTheme.lightGreen300,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray60003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60003,
        fontSize: 18.fSize,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeLight18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeLightgreen300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreen300,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimaryLight => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumABSALOMBlack900 =>
      theme.textTheme.bodyMedium!.aBSALOM.copyWith(
        color: appTheme.black900.withOpacity(0.2),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumABSALOMLightgreen300 =>
      theme.textTheme.bodyMedium!.aBSALOM.copyWith(
        color: appTheme.lightGreen300,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray60003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60003,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
// Display text style
  static get displayLargeLightgreen300 =>
      theme.textTheme.displayLarge!.copyWith(
        color: appTheme.lightGreen300,
        fontSize: 58.fSize,
      );
  static get displayMediumAbsintheOnSecondaryContainer =>
      theme.textTheme.displayMedium!.absinthe.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 42.fSize,
      );
  static get displayMediumAbsintheOnSecondaryContainer42 =>
      theme.textTheme.displayMedium!.absinthe.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 42.fSize,
      );
  static get displayMediumAparajitaGray80001 =>
      theme.textTheme.displayMedium!.aparajita.copyWith(
        color: appTheme.gray80001,
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumAparajitaOnSecondaryContainer =>
      theme.textTheme.displayMedium!.aparajita.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 42.fSize,
      );
  static get displayMediumGray80001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get displayMediumOpenSansGray80001 =>
      theme.textTheme.displayMedium!.openSans.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get displaySmallOnSecondaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get displaySmall_1 => theme.textTheme.displaySmall!;
// Headline text style
  static get headlineLargeOnSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get headlineSmallAbrilFatface =>
      theme.textTheme.headlineSmall!.abrilFatface.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray60002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
// Title text style
  static get titleLargeABSALOM => theme.textTheme.titleLarge!.aBSALOM.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeABSALOMGray80001Regular =>
      theme.textTheme.titleLarge!.aBSALOM.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeAbrilFatfaceGray70001 =>
      theme.textTheme.titleLarge!.abrilFatface.copyWith(
        color: appTheme.gray70001,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray80001Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray80001_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleLargeSFProDisplayBlack900 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMontserratOnSecondaryContainer =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
}
