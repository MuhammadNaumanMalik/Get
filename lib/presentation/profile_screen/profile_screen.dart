import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                    text: "lbl_profile".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfilepicture72x72,
                                    height: 72.adaptSize,
                                    width: 72.adaptSize,
                                    radius: BorderRadius.circular(36.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 9.v, bottom: 14.v),
                                    child: Column(children: [
                                      Text(name ?? "",
                                          style: theme.textTheme.titleSmall),
                                      SizedBox(height: 8.v),
                                      Text(username ?? "",
                                          style: theme.textTheme.bodySmall)
                                    ]))
                              ])),
                      SizedBox(height: 32.v),
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGendericon,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 2.v, bottom: 3.v),
                                    child: Text("lbl_gender".tr,
                                        style: theme.textTheme.labelLarge)),
                                Spacer(),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    child: Text("lbl_male".tr,
                                        style: theme.textTheme.bodySmall)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgRighticon,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 16.h))
                              ])),
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgDateicon,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 3.v, bottom: 2.v),
                                child: Text("lbl_birthday".tr,
                                    style: theme.textTheme.labelLarge)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                                child: Text("lbl_12_12_2000".tr,
                                    style: theme.textTheme.bodySmall)),
                            CustomImageView(
                                svgPath: ImageConstant.imgRighticon,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMailPrimary,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 2.v, bottom: 3.v),
                                child: Text("lbl_email".tr,
                                    style: theme.textTheme.labelLarge)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text(email ?? "",
                                    style: theme.textTheme.bodySmall)),
                            CustomImageView(
                                svgPath: ImageConstant.imgRighticon,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 15.v),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCreditCardIcon,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 2.v, bottom: 3.v),
                                    child: Text("lbl_phone_number".tr,
                                        style: theme.textTheme.labelLarge)),
                                Spacer(),
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 2.v, bottom: 3.v),
                                    child: Text("lbl_307_555_0133".tr,
                                        style: theme.textTheme.bodySmall)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgRighticon,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 16.h))
                              ])),
                      SizedBox(height: 5.v),
                      GestureDetector(
                          onTap: () {
                            onTapChangepassword(context);
                          },
                          child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 15.v),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLockPrimary,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 4.v),
                                    child: Text("lbl_change_password".tr,
                                        style: theme.textTheme.labelLarge)),
                                Spacer(),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.v),
                                    child: Text("msg".tr,
                                        style: theme.textTheme.bodySmall)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgRighticon,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(left: 16.h))
                              ])))
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the changePasswordScreen.
  onTapChangepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }
}
