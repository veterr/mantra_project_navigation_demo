import 'package:flutter/material.dart';
import 'package:mantra_new_design_june/presentation/start_screen_3_screen/start_screen_3_screen.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'notifier/start_screen_2_notifier.dart';

class StartScreen2Screen extends ConsumerStatefulWidget {
  const StartScreen2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  StartScreen2ScreenState createState() => StartScreen2ScreenState();
}

class StartScreen2ScreenState extends ConsumerState<StartScreen2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        appBar: _buildAppbarSection(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [_buildMantraSection(context), SizedBox(height: 8.v)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbarSection(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSend,
          margin: EdgeInsets.only(
            top: 13.v,
            right: 25.h,
            bottom: 13.v,
          ),
          onTap: () {
            onTapSendone(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildMantraSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_r_vi_hala_giridh_r2".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.displayMediumOpenSansGray80001.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 30.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 222.h,
              margin: EdgeInsets.only(left: 22.h),
              child: Text(
                "msg_my_obeisances_to".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeGray80001Regular.copyWith(
                  height: 1.20,
                ),
              ),
            ),
          ),
          SizedBox(height: 50.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_this_special_mantra".tr,
              maxLines: 8,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 34.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 38.adaptSize,
                  width: 38.adaptSize,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    top: 14.v,
                  ),
                  onTap: () {
                    onTapImgArrowdownone(context);
                  },
                ),
                SizedBox(
                  height: 10.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 2,
                    effect: ScrollingDotsEffect(
                      activeDotColor: theme.colorScheme.errorContainer,
                      dotColor: appTheme.lightGreen300,
                      dotHeight: 10.v,
                      dotWidth: 34.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
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
                          onTapBtnArrowrightone(context);
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
    );
  }

  onTapSendone(BuildContext context) {}

  /// Navigates to the startScreen1Screen when the action is triggered.
  onTapImgArrowdownone(BuildContext context) {
    // NavigatorService.pushNamedAndRemoveUntil(
    //   AppRoutes.startScreen1Screen,
    // );
    NavigatorService.goBack(context);
  }

  /// Navigates to the startScreen3Screen when the action is triggered.
  onTapBtnArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.startScreen3Screen, context);
    // print("Go to 3!!!!!!");
    // Navigator.of(context).push(
    //   PageRouteBuilder(
    //     pageBuilder: (context, animation, secondaryAnimation) =>
    //         StartScreen3Screen(),
    //     transitionDuration: Duration.zero, // Disables the transition animation
    //     reverseTransitionDuration:
    //         Duration.zero, // Disables reverse transition animation
    //   ),
    // );
    print("!!!!NEWWAY3!!!");
    // Navigator.of(context).push(
    //   PageRouteBuilder(
    //     pageBuilder: (context, animation, secondaryAnimation) =>
    //         StartScreen3Screen(),
    //     transitionDuration: Duration.zero, // Disables the transition animation
    //     reverseTransitionDuration:
    //         Duration.zero, // Disables reverse transition animation
    //   ),
    // );
  }
}
