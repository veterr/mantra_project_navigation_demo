import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.gray80001,
        borderRadius: BorderRadius.circular(46.h),
      );
  static BoxDecoration get outlineTL34 => BoxDecoration(
        color: appTheme.gray80001,
        borderRadius: BorderRadius.circular(34.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10002.withOpacity(0.3),
        borderRadius: BorderRadius.circular(36.h),
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration,
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
