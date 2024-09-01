import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../core/app_export.dart';
import '../models/slidersection_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SlidersectionItemWidget extends StatelessWidget {
  SlidersectionItemWidget(this.slidersectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SlidersectionItemModel slidersectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.4, 0.5),
          end: Alignment(0.15, 0),
          colors: [
            theme.colorScheme.primary.withOpacity(0),
            theme.colorScheme.primary
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        child: Container(
          width: 300.h,
          padding: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 24.v,
          ),
          decoration: AppDecoration.outline.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 264.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 14.v,
                          right: 56.h,
                        ),
                        child: Text(
                          slidersectionItemModelObj.dynamictext1!,
                          style: CustomTextStyles.abrilFatfaceLightgreen300,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 22.v),
                      child: Text(
                        slidersectionItemModelObj.min!,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    Text(
                      slidersectionItemModelObj.dynamictext2!,
                      style: CustomTextStyles.bodyLargeABSALOMLightgreen300,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        slidersectionItemModelObj.dynamictext3!,
                        style:
                            CustomTextStyles.headlineLargeOnSecondaryContainer,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                margin: EdgeInsets.only(right: 62.h),
                decoration: AppDecoration.outlineBlack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      slidersectionItemModelObj.done!,
                      style: CustomTextStyles.titleLargeABSALOMGray80001Regular,
                    ),
                    SizedBox(width: 10.h),
                    CustomImageView(
                      imagePath: slidersectionItemModelObj.dynamicImage!,
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
