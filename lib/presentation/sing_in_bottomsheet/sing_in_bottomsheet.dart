import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'notifier/sing_in_notifier.dart'; // ignore_for_file: must_be_immutable

class SingInBottomsheet extends ConsumerStatefulWidget {
  const SingInBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SingInBottomsheetState createState() => SingInBottomsheetState();
}

class SingInBottomsheetState extends ConsumerState<SingInBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGrayE.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildWelcomeSection(context), SizedBox(height: 10.v)],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogInButton(BuildContext context) {
    return CustomOutlinedButton(
      text: "lbl_log_in".tr,
      buttonStyle: CustomButtonStyles.outlineLightGreenTL10,
      buttonTextStyle: CustomTextStyles.titleLargeGray80001_2,
      onPressed: () {
        onTapLogInButton(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: CustomOutlinedButton(
        text: "lbl_register".tr,
        onPressed: () {
          onTapRegisterButton(context);
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueWithAppleButton(BuildContext context) {
    return CustomElevatedButton(
      text: "msg_continue_with_apple".tr,
      leftIcon: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        margin: EdgeInsets.only(right: 14.h),
        decoration: BoxDecoration(
          color: theme.colorScheme.primary,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgPath4,
          height: 22.v,
          width: 18.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            "lbl_welcome".tr,
            style: CustomTextStyles.headlineLargeOnSecondaryContainer,
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_please_select_how".tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 20.v),
          _buildLogInButton(context),
          SizedBox(height: 18.v),
          _buildRegisterButton(context),
          SizedBox(height: 16.v),
          _buildContinueWithAppleButton(context)
        ],
      ),
    );
  }

  onTapLogInButton(BuildContext context) {}

  /// Navigates to the registerScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.registerScreen, context);
  }
}
