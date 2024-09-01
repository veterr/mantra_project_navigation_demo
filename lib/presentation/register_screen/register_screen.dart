import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../sing_in_bottomsheet/sing_in_bottomsheet.dart';
import 'notifier/register_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _firebase = FirebaseAuth.instance;

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisterScreenState createState() => RegisterScreenState();
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RegisterScreenState extends ConsumerState<RegisterScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray100,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 896.v,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 524.v,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage1,
                                  height: 524.v,
                                  width: double.maxFinite,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: _buildAppBar(context),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 492.v,
                          margin: EdgeInsets.only(bottom: 42.v),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 164.v,
                                    right: 88.h,
                                  ),
                                  child: Text(
                                    "lbl_one_more_time".tr,
                                    style:
                                        CustomTextStyles.headlineSmallGray60002,
                                  ),
                                ),
                              ),
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.zero,
                                color: appTheme.gray200E5,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                ),
                                child: Container(
                                  height: 492.v,
                                  decoration: AppDecoration.fillGrayE.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      _buildNameRow(context),
                                      _buildPhoneNumberRow(context),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 54.h,
                                            top: 184.v,
                                          ),
                                          child: Text(
                                            "lbl_country".tr,
                                            style:
                                                theme.textTheme.headlineSmall,
                                          ),
                                        ),
                                      ),
                                      _buildFavoriteRow(context),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 164.v,
                                            right: 88.h,
                                          ),
                                          child: Text(
                                            "lbl_one_more_time".tr,
                                            style: CustomTextStyles
                                                .headlineSmallGray60002,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16.h,
                                          vertical: 28.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillGrayE.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder20,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            _buildFormColumn(context),
                                            SizedBox(height: 10.v)
                                          ],
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
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 84.v,
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 32.h,
          bottom: 6.v,
        ),
        onTap: () {
          onTapArrowdownone(context);
        },
      ),
      actions: [
        SizedBox(
          height: 44.adaptSize,
          width: 44.adaptSize,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDonate1,
                height: 44.adaptSize,
                width: 44.adaptSize,
                alignment: Alignment.centerRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDonate1,
                height: 44.adaptSize,
                width: 44.adaptSize,
              )
            ],
          ),
        ),
        Container(
          height: 38.adaptSize,
          width: 38.adaptSize,
          margin: EdgeInsets.fromLTRB(9.h, 3.v, 22.h, 2.v),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSend,
                height: 30.adaptSize,
                width: 30.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.fromLTRB(4.h, 4.v, 3.h, 3.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSwmIconsBroken,
                height: 38.adaptSize,
                width: 38.adaptSize,
                alignment: Alignment.centerRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSwmIconsBroken,
                height: 38.adaptSize,
                width: 38.adaptSize,
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildNameRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        top: 28.v,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.outlineGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_your_name".tr,
                        style: theme.textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 2.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.outlineLightGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_e_mail".tr,
                        style: theme.textTheme.headlineSmall,
                      )
                    ],
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
  Widget _buildPhoneNumberRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 196.v,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_phone_number".tr,
                    style: theme.textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoriteRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        top: 172.v,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(registerNotifier).nameEditTextController,
          hintText: "lbl_your_name".tr,
          hintStyle: theme.textTheme.headlineSmall!,
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text";
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineGray,
          filled: true,
          fillColor: theme.colorScheme.secondaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 38.h,
        top: 8.v,
        bottom: 8.v,
      ),
      decoration: AppDecoration.outlineLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_e_mail".tr,
            style: theme.textTheme.headlineSmall,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoriteColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 18.adaptSize,
            width: 18.adaptSize,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCountryStack(BuildContext context) {
    return SizedBox(
      height: 54.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 38.h,
                bottom: 8.v,
              ),
              child: Text(
                "lbl_country".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          _buildFavoriteColumn(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 38.h,
        top: 8.v,
        bottom: 8.v,
      ),
      decoration: AppDecoration.outlineLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_phone_number".tr,
            style: theme.textTheme.headlineSmall,
          )
        ],
      ),
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
  Widget _buildContinueWithButton(BuildContext context) {
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
  Widget _buildFormColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          _buildNameEditText(context),
          SizedBox(height: 18.v),
          _buildEmailColumn(context),
          SizedBox(height: 18.v),
          _buildCountryStack(context),
          SizedBox(height: 16.v),
          _buildPhoneNumberColumn(context),
          SizedBox(height: 32.v),
          _buildRegisterButton(context),
          SizedBox(height: 16.v),
          _buildContinueWithButton(context)
        ],
      ),
    );
  }

  /// Shows a modal bottom sheet with [SingInBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapArrowdownone(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SingInBottomsheet(),
        isScrollControlled: true);
  }

  // Actually we send same-same login data each time
  onTapRegisterButton(BuildContext context) async {
    final userCredentials = await _firebase.signInWithEmailAndPassword(
        email: "dmitrbah@inbox.ru", password: "dmitrbahhhhh");
    print("Authed!!!!");
    print(userCredentials);
    // After successful login, navigate to the authorized initial route
    Navigator.pushReplacementNamed(context, AppRoutes.initialRouteAuthorized);
  }
}
