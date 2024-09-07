import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mantra_new_design_june/presentation/start_screen_2_screen/start_screen_2_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import 'notifier/start_screen_1_notifier.dart';

class StartScreen1Screen extends ConsumerStatefulWidget {
  const StartScreen1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  StartScreen1ScreenState createState() => StartScreen1ScreenState();
}

class StartScreen1ScreenState extends ConsumerState<StartScreen1Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 40.v,
            right: 16.h,
          ),
          child: Column(
            children: [SizedBox(height: 6.v), _buildGurujiSection(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartSection(BuildContext context) {
    print("!!!!Start!!!!");
    return GestureDetector(
      onTap: () {
        print('!!!!Here I am!!!!');
        onTapColumnstart(context);
      },
      child: SizedBox(
        height: 734.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () {
                print("!!!!tapped!!!!");
                onTapColumnstart(context);
              },
              child: Container(
                height: 114.v,
                width: 114.h,
                margin: EdgeInsets.only(right: 22.h),
                decoration: AppDecoration.gold.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder56,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_start2".tr,
                      style: CustomTextStyles
                          .titleMediumMontserratOnSecondaryContainer,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 554.v,
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGuruji1,
                    height: 554.v,
                    width: double.maxFinite,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 200.h,
                      margin: EdgeInsets.only(
                        left: 42.h,
                        bottom: 50.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_get_the_real_treasure2".tr,
                              style: CustomTextStyles
                                  .displayMediumAparajitaOnSecondaryContainer,
                            ),
                            TextSpan(
                              text: "lbl2".tr,
                              style: CustomTextStyles
                                  .displayMediumAbsintheOnSecondaryContainer42,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup70,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSend,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.centerRight,
                    onTap: () {
                      onTapImgSendone(context);
                    },
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 38.h),
                    child: Text(
                      "msg_start_your_journey".tr,
                      style: CustomTextStyles.bodyLargeABSALOMGray70001,
                    ),
                  ),
                  SizedBox(height: 84.v)
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMobile,
              height: 76.v,
              width: 90.h,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 28.v),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGurujiSection(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _buildStartSection(context),
          SizedBox(height: 16.v),
          SizedBox(
            height: 10.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 0,
              count: 2,
              effect: ScrollingDotsEffect(
                spacing: 9,
                activeDotColor: theme.colorScheme.errorContainer,
                dotColor: appTheme.lightGreen300,
                dotHeight: 10.v,
                dotWidth: 34.h,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the startScreen2Screen when the action is triggered.
  onTapColumnstart(BuildContext context) {
    print("!!!!! PUSH NAMEDDDD!!!");
    // NavigatorService.pushNamedAndRemoveUntil(
    //   AppRoutes.startScreen2Screen,
    // );
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            StartScreen2Screen(),
        transitionDuration: Duration.zero, // Disables the transition animation
        reverseTransitionDuration:
            Duration.zero, // Disables reverse transition animation
      ),
    );
    print("!!!!! AFTER PUSH NAMED!!!");
  }

  onTapImgSendone(BuildContext context) {}
}
