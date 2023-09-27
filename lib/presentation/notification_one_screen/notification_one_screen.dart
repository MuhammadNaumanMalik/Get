import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';

class NotificationOneScreen extends StatelessWidget {
  const NotificationOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_notification".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Column(children: [
                  CustomElevatedButton(
                      text: "lbl_offer".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgOffer)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapOffer(context);
                      }),
                  CustomElevatedButton(
                      text: "lbl_feed".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgListIcon)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapFeed(context);
                      }),
                  SizedBox(height: 5.v),
                  CustomElevatedButton(
                      text: "lbl_acivity".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgNotificationIconPrimary)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.labelLarge!,
                      onTap: () {
                        onTapAcivity(context);
                      })
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the notificationOfferScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationOfferScreen.
  onTapOffer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOfferScreen);
  }

  /// Navigates to the notificationFeedScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationFeedScreen.
  onTapFeed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationFeedScreen);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationScreen.
  onTapAcivity(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}
