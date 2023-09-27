import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:goldenjetfront/widgets/custom_icon_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 72.adaptSize,
                          width: 72.adaptSize,
                          padding: EdgeInsets.all(24.h),
                          decoration:
                              IconButtonStyleHelper.outlineSecondaryContainer,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCheckmark)),
                      SizedBox(height: 15.v),
                      Text("lbl_success".tr,
                          style: CustomTextStyles.headlineSmallOnPrimary),
                      SizedBox(height: 11.v),
                      Opacity(
                          opacity: 0.5,
                          child: Text("msg_thank_you_for_shopping".tr,
                              style: CustomTextStyles.bodySmallOnPrimary_1)),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          text: "lbl_back_to_order".tr,
                          onTap: () {
                            onTapBacktoorder(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the orderScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the orderScreen.
  onTapBacktoorder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderScreen);
  }
}
