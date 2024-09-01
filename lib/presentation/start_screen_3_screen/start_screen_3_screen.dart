import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'notifier/start_screen_3_notifier.dart';

class StartScreen3Screen extends ConsumerStatefulWidget {
  const StartScreen3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  StartScreen3ScreenState createState() => StartScreen3ScreenState();
}

class StartScreen3ScreenState extends ConsumerState<StartScreen3Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 44.v,
          ),
          child: Column(
            children: [SizedBox(height: 20.v), _buildColumntitleone(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSend,
          margin: EdgeInsets.only(
            top: 13.v,
            right: 25.h,
            bottom: 13.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumntitleone(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Column(
          children: [
            Text(
              "msg_what_will_we_do".tr,
              style: CustomTextStyles.displayMediumAparajitaGray80001,
            ),
            SizedBox(height: 56.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_chant_mantra_every2".tr,
                    style: CustomTextStyles.headlineSmallBold,
                  ),
                  TextSpan(
                    text: "msg_start_small_just".tr,
                    style: theme.textTheme.bodyLarge,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 46.v),
            SizedBox(
              width: double.maxFinite,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_take_chalenges".tr,
                      style: CustomTextStyles.headlineSmallBold,
                    ),
                    TextSpan(
                      text: "msg_increase_the_number".tr,
                      style: theme.textTheme.bodyLarge,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 32.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_keep_a_diary".tr,
                        style: CustomTextStyles.headlineSmallBold,
                      ),
                      TextSpan(
                        text: "msg_record_your_states".tr,
                        style: theme.textTheme.bodyLarge,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                    onTap: () {
                      onTapImgArrowdownone(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(
                      "lbl_start_now".tr,
                      style: CustomTextStyles.displaySmall_1,
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     onTapTxtStartnow(context);
                  //   },
                  //   child: Padding(
                  //     padding: EdgeInsets.only(left: 24.h),
                  //     child: Text(
                  //       "lbl_start_now".tr,
                  //       style: CustomTextStyles.displaySmall_1,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
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
                          topLeft: Radius.circular(34),
                          topRight: Radius.circular(34),
                          bottomLeft: Radius.circular(34),
                          bottomRight: Radius.circular(34),
                        ),
                        child: CustomIconButton(
                          height: 70.adaptSize,
                          width: 70.adaptSize,
                          padding: EdgeInsets.all(14.h),
                          decoration: IconButtonStyleHelper.outlineTL34,
                          onTap: () {
                            onTapBtnArrowleftone(context);
                          },
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the startScreen2Screen when the action is triggered.
  onTapImgArrowdownone(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.startScreen2Screen,
    );
  }

  /// Navigates to the modeScreen when the action is triggered.
  onTapTxtStartnow(BuildContext context) {
    print("!!!!Start now!!!");
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.modeScreen,
    );
  }

  /// Navigates to the modeScreen when the action is triggered.
  onTapBtnArrowleftone(BuildContext context) {
    NavigatorService.pushNamedAndRemoveUntil(
      AppRoutes.modeScreen,
    );
  }
}
