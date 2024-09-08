import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'notifier/news_1_notifier.dart';

class News1Screen extends ConsumerStatefulWidget {
  const News1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  News1ScreenState createState() => News1ScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class News1ScreenState extends ConsumerState<News1Screen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        extendBodyBehindAppBar: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup1474,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              width: 392.h,
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_6_hours_ago".tr,
                          style: CustomTextStyles.bodyMediumPrimaryLight13,
                        ),
                        SizedBox(
                          width: 260.h,
                          child: Text(
                            "msg_10_july_2024_online".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!.copyWith(
                              height: 1.06,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.v),
                        _buildEventDetails(context),
                        SizedBox(height: 14.v),
                        Text(
                          "lbl_14_june_2024".tr,
                          style: CustomTextStyles.bodyMediumPrimaryLight13,
                        ),
                        SizedBox(
                          width: 332.h,
                          child: Text(
                            "msg_new_track_relse".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!.copyWith(
                              height: 1.06,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage63,
                          height: 210.v,
                          width: double.maxFinite,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: 354.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: ReadMoreText(
                            "msg_mantra_chanting".tr,
                            trimLines: 1,
                            colorClickableText: theme.colorScheme.primary,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: "lbl_read_more".tr,
                            moreStyle: CustomTextStyles.bodyLargeLight.copyWith(
                              height: 1.20,
                            ),
                            lessStyle: CustomTextStyles.bodyLargeLight.copyWith(
                              height: 1.20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "lbl_14_june_2024".tr,
                        style: CustomTextStyles.bodyMediumPrimaryLight13,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_your_city_om_chanting".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage64,
                    height: 206.v,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "msg_om_chanting_brings".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeLight.copyWith(
                      height: 1.20,
                    ),
                  ),
                  SizedBox(height: 52.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text(
                        "lbl_read_more".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeAbrilFatfacePrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_14_june_2024".tr,
                      style: CustomTextStyles.bodyMediumPrimaryLight13,
                    ),
                  ),
                  Text(
                    "msg_new_track_relse2".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium!.copyWith(
                      height: 1.06,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage65,
                    height: 208.v,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Container(
                    width: 354.h,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      right: 6.h,
                    ),
                    child: ReadMoreText(
                      "msg_mantra_chanting".tr,
                      trimLines: 1,
                      colorClickableText: theme.colorScheme.primary,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "lbl_read_more".tr,
                      moreStyle: CustomTextStyles.bodyLargeLight.copyWith(
                        height: 1.06,
                      ),
                      lessStyle: CustomTextStyles.bodyLargeLight.copyWith(
                        height: 1.06,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFeatherEditor,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 13.v,
          bottom: 13.v,
        ),
        onTap: () {
          onTapFeathereditor(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEventDetails(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage61,
            height: 210.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_experience_transformation5".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeLight.copyWith(
              height: 1.20,
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 12.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    onTapTxtReadmoretwo(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_read_more".tr,
                      style: CustomTextStyles.titleLargeAbrilFatfacePrimary,
                    ),
                  ),
                ),
                CustomOutlinedButton(
                  width: 140.h,
                  text: "lbl_register".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGrayToGrayTL10Decoration,
                  onPressed: () {
                    onTapRegister(context);
                  },
                  alignment: Alignment.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  onTapFeathereditor(BuildContext context) {}
  onTapTxtReadmoretwo(BuildContext context) {}
  onTapRegister(BuildContext context) {}
}
