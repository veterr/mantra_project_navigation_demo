import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'models/slidersection_item_model.dart';
import 'notifier/mode_notifier.dart';
import 'widgets/slidersection_item_widget.dart';

class ModeScreen extends ConsumerStatefulWidget {
  const ModeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ModeScreenState createState() => ModeScreenState();
}

class ModeScreenState extends ConsumerState<ModeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: double.maxFinite,
                    width: 392.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                  Container(
                    height: 842.v,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 842.v,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Opacity(
                                opacity: 0.8,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgShriVitthalSt842x298,
                                  height: 842.v,
                                  width: 298.h,
                                ),
                              ),
                              Container(
                                width: 268.h,
                                margin: EdgeInsets.only(left: 30.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFeatherEditor,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                      onTap: () {
                                        onTapImgFeathereditor(context);
                                      },
                                    ),
                                    SizedBox(height: 70.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "msg_choose_you_period".tr,
                                        style: CustomTextStyles
                                            .headlineSmallPrimary,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 80,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 10.v,
                                        margin: EdgeInsets.only(right: 70.h),
                                        child: AnimatedSmoothIndicator(
                                          activeIndex: 0,
                                          count: 2,
                                          effect: ScrollingDotsEffect(
                                            spacing: 9,
                                            activeDotColor: theme
                                                .colorScheme.errorContainer,
                                            dotColor: appTheme.lightGreen300,
                                            dotHeight: 10.v,
                                            dotWidth: 34.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(
                                      flex: 19,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 46.h),
                                      child: Text(
                                        "lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .displaySmallOnSecondaryContainer,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 42.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: double.maxFinite,
                                  child: GestureDetector(
                                    onTap: () {
                                      onTapButtonsshare(context);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 22.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgDonate1,
                                            height: 44.adaptSize,
                                            width: 44.adaptSize,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgSend,
                                            height: 38.adaptSize,
                                            width: 38.adaptSize,
                                            margin: EdgeInsets.only(left: 8.h),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 98.v),
                                Container(
                                  height: 20.v,
                                  width: double.maxFinite,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 18.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Text(
                                        "msg_go_step_by_step".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray60003,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 10.v,
                                          width: 1.h,
                                          margin: EdgeInsets.only(left: 66.h),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 32.v),
                                _buildSliderSection(context),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 78.h),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 78.h),
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
                                            theme.colorScheme.primary
                                                .withOpacity(0),
                                            theme.colorScheme.primary
                                          ],
                                        ),
                                        corners: Corners(
                                          topLeft: Radius.circular(46),
                                          topRight: Radius.circular(46),
                                          bottomLeft: Radius.circular(46),
                                          bottomRight: Radius.circular(46),
                                        ),
                                        child: CustomIconButton(
                                          height: 94.adaptSize,
                                          width: 94.adaptSize,
                                          padding: EdgeInsets.all(30.h),
                                          decoration:
                                              IconButtonStyleHelper.outline,
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup1216,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
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

  /// Section Widget
  Widget _buildSliderSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Consumer(
        builder: (context, ref, _) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 360.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                ref.watch(modeNotifier).sliderIndex = index;
              },
            ),
            itemCount: ref
                    .watch(modeNotifier)
                    .modeModelObj
                    ?.slidersectionItemList
                    .length ??
                0,
            itemBuilder: (context, index, realIndex) {
              SlidersectionItemModel model = ref
                      .watch(modeNotifier)
                      .modeModelObj
                      ?.slidersectionItemList[index] ??
                  SlidersectionItemModel();
              return SlidersectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  onTapImgFeathereditor(BuildContext context) {}
  onTapButtonsshare(BuildContext context) {}
}
