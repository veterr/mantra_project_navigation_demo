import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'notifier/advanced_level_notifier.dart';

class AdvancedLevelScreen extends ConsumerStatefulWidget {
  const AdvancedLevelScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AdvancedLevelScreenState createState() => AdvancedLevelScreenState();
}

class AdvancedLevelScreenState extends ConsumerState<AdvancedLevelScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildDurationSection(context),
              SizedBox(height: 44.v),
              _buildStartSection(context),
              SizedBox(height: 28.v),
              _buildMuteSection(context),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "msg_namaha_paramahamsa".tr,
                    style: CustomTextStyles.bodyMediumABSALOMBlack900,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 260.h,
                  child: Divider(
                    color: appTheme.gray80001,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildFooterStack(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 5.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDonate1,
          margin: EdgeInsets.only(
            top: 5.v,
            right: 6.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSwmIconsBroken,
          margin: EdgeInsets.fromLTRB(9.h, 8.v, 28.h, 2.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildDurationSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Text(
            "msg_60_minutes_chant".tr,
            style: theme.textTheme.headlineLarge,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImageSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(right: 108.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse432,
            height: 38.v,
            width: 126.h,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStartSection(BuildContext context) {
    return SizedBox(
      height: 396.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 44.v),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 3.43.h,
                top: 3.43.v,
                right: 3.43.h,
                bottom: 3.43.v,
              ),
              strokeWidth: 3.43.h,
              gradient: LinearGradient(
                begin: Alignment(0.5, 1),
                end: Alignment(0.5, 0.23),
                colors: [appTheme.gray40002, appTheme.blueGray100],
              ),
              corners: Corners(
                topLeft: Radius.circular(196),
                topRight: Radius.circular(196),
                bottomLeft: Radius.circular(196),
                bottomRight: Radius.circular(196),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 34.v,
                ),
                decoration: AppDecoration.outline2.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder196,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildImageSection(context),
                    SizedBox(height: 10.v)
                  ],
                ),
              ),
            ),
          ),
          CustomIconButton(
            height: 90.adaptSize,
            width: 90.adaptSize,
            padding: EdgeInsets.all(16.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1218,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: DottedBorder(
              color: appTheme.gray40001,
              padding: EdgeInsets.only(
                left: 15.h,
                top: 15.v,
                right: 15.h,
                bottom: 15.v,
              ),
              strokeWidth: 15.h,
              radius: Radius.circular(130),
              borderType: BorderType.RRect,
              dashPattern: [2, 4],
              child: Container(
                width: 260.h,
                padding: EdgeInsets.symmetric(vertical: 64.v),
                decoration: AppDecoration.outlineGray40001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder130,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "lbl_start".tr,
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                    Text(
                      "lbl_60_minutes".tr,
                      style: CustomTextStyles.bodyMediumGray60003,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMuteSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMute1,
            height: 42.adaptSize,
            width: 42.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 46.v,
            width: 120.h,
            margin: EdgeInsets.only(bottom: 4.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPlaylist1,
            height: 46.adaptSize,
            width: 46.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActivityRow(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgActivity1,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCompas1,
              height: 36.adaptSize,
              width: 36.adaptSize,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 36.v,
              width: 30.h,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgNotificationBellSvgrepoCom,
              height: 34.adaptSize,
              width: 34.adaptSize,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [_buildActivityRow(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildFooterStack(BuildContext context) {
    return Container(
      height: 86.v,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 86.v,
            width: 392.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(0.5),
            ),
          ),
          _buildSettingsRow(context)
        ],
      ),
    );
  }
}
