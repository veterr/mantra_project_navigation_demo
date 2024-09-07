import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'notifier/loged_in_level_select_notifier.dart';

class LogedInLevelSelectScreen extends ConsumerStatefulWidget {
  const LogedInLevelSelectScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LogedInLevelSelectScreenState createState() =>
      LogedInLevelSelectScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LogedInLevelSelectScreenState
    extends ConsumerState<LogedInLevelSelectScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            _buildCalendarSection(context),
            SizedBox(height: 2.v),
            CustomImageView(
              imagePath: ImageConstant.imgGroup1222,
              height: 1.v,
              width: double.maxFinite,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 26.h),
            ),
            SizedBox(height: 10.v),
            _buildDailySummary(context),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 216.h,
                child: Divider(),
              ),
            ),
            SizedBox(height: 10.v),
            _buildTimeManagement(context),
            SizedBox(height: 4.v)
          ],
        ),
        bottomNavigationBar: _buildBottomNavigation(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFeatherEditor,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 7.v,
          bottom: 7.v,
        ),
        onTap: () {
          onTapFeathereditor(context);
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDonate1,
          onTap: () {
            onTapDonateoneone(context);
          },
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSend,
          margin: EdgeInsets.fromLTRB(9.h, 3.v, 22.h, 3.v),
          onTap: () {
            onTapSendone(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildColumnthirteen(
                    context,
                    thirteen: "lbl_12".tr,
                    dayOne: "lbl_day".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildColumnthirteen(
                    context,
                    thirteen: "lbl_13".tr,
                    dayOne: "lbl_day".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildColumnthirteen(
                    context,
                    thirteen: "lbl_14".tr,
                    dayOne: "lbl_day".tr,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "lbl_15".tr,
                      style: CustomTextStyles.displayMediumGray80001,
                    ),
                    Text(
                      "lbl_day".tr,
                      style: CustomTextStyles.bodyLargeABSALOMLightgreen300,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildColumnthirteen(
                    context,
                    thirteen: "lbl_16".tr,
                    dayOne: "lbl_day".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildColumnthirteen(
                    context,
                    thirteen: "lbl_17".tr,
                    dayOne: "lbl_day".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildColumnthirteen(
                    context,
                    thirteen: "lbl_18".tr,
                    dayOne: "lbl_day".tr,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMotivationalQuote(BuildContext context) {
    return SizedBox(
      height: 348.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.v),
            child: Text(
              "msg_today_s_effort_makes".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeGray60003.copyWith(
                height: 1.33,
              ),
            ),
          ),
          OutlineGradientButton(
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
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(8.h),
              decoration: AppDecoration.outline1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 2.h),
                    padding: EdgeInsets.symmetric(vertical: 74.v),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup61,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 42.v),
                        CustomIconButton(
                          height: 72.adaptSize,
                          width: 72.adaptSize,
                          padding: EdgeInsets.all(22.h),
                          decoration: IconButtonStyleHelper.fillBlueGray,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgOverflowMenu,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_how_to_go_for_mantra".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeLight18.copyWith(
                      height: 1.20,
                    ),
                  ),
                  SizedBox(height: 4.v)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDailySummary(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildMotivationalQuote(context),
          SizedBox(height: 12.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 42.h),
            child: Row(
              children: [
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.lightGreen300,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.only(left: 122.h),
                  decoration: BoxDecoration(
                    color: appTheme.lightGreen300,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.black900,
              indent: 10.h,
              endIndent: 16.h,
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChantingSchedule(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 4.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder16,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup137,
          ),
          fit: BoxFit.cover,
        ),
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_30".tr,
            style: CustomTextStyles.displayLargeLightgreen300,
          ),
          Expanded(
            child: Container(
              height: 50.v,
              margin: EdgeInsets.only(top: 12.v),
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Text(
                    "lbl_chanting_mantra".tr,
                    style: CustomTextStyles.bodyLargeABSALOMLightgreen300,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_minuties".tr,
                        style: CustomTextStyles.titleLargeAbrilFatfaceGray70001,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Text(
                        "lbl_left".tr,
                        style: CustomTextStyles.titleLargeAbrilFatfaceGray70001,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 2.v,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 2.v,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 3.h,
                  top: 3.v,
                  right: 3.h,
                  bottom: 3.v,
                ),
                strokeWidth: 3.h,
                gradient: LinearGradient(
                  begin: Alignment(0.4, 0.5),
                  end: Alignment(0.15, 0),
                  colors: [
                    theme.colorScheme.primary.withOpacity(0),
                    theme.colorScheme.primary
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
                child: CustomIconButton(
                  height: 72.adaptSize,
                  width: 72.adaptSize,
                  padding: EdgeInsets.all(22.h),
                  decoration: IconButtonStyleHelper.outlineTL34,
                  onTap: () {
                    onTapBtnIconbutton(context);
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1216,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeManagement(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_7_am2".tr,
                      style: CustomTextStyles.bodyLargeLightgreen300,
                    ),
                    TextSpan(
                      text: "            ",
                    ),
                    TextSpan(
                      text: "lbl_8pm".tr,
                      style: CustomTextStyles.bodyLargeLight,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          _buildChantingSchedule(context),
          SizedBox(height: 8.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 26.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSchedule1,
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  onTap: () {
                    onTapImgScheduleoneone(context);
                  },
                ),
                SizedBox(width: 28.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Text(
                      "msg_change_my_chant".tr,
                      style: CustomTextStyles.bodyLarge18,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildColumnthirteen(
    BuildContext context, {
    required String thirteen,
    required String dayOne,
  }) {
    return Column(
      children: [
        Text(
          thirteen,
          style: CustomTextStyles.headlineSmallAbrilFatface.copyWith(
            color: appTheme.gray80001,
          ),
        ),
        Text(
          dayOne,
          style: CustomTextStyles.bodyMediumABSALOMLightgreen300.copyWith(
            color: appTheme.lightGreen300,
          ),
        )
      ],
    );
  }

  onTapFeathereditor(BuildContext context) {}
  onTapDonateoneone(BuildContext context) {}
  onTapSendone(BuildContext context) {}

  /// Navigates to the advancedLevelScreen when the action is triggered.
  onTapBtnIconbutton(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.advancedLevelScreen, context);
  }

  onTapImgScheduleoneone(BuildContext context) {}
}
