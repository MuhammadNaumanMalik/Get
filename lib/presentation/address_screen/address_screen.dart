import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_address".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                child: Column(children: [
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 22.v),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_priscekila".tr,
                                style: theme.textTheme.titleSmall),
                            Container(
                                width: 264.h,
                                margin: EdgeInsets.only(top: 19.v, right: 30.h),
                                child: Text("msg_3711_spring_hill".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.80))),
                            SizedBox(height: 20.v),
                            Text("lbl_99_1234567890".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 19.v),
                            Row(children: [
                              Text("lbl_edit".tr,
                                  style: CustomTextStyles.titleSmallPrimary),
                              Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Text("lbl_delete".tr,
                                      style:
                                          CustomTextStyles.titleSmallPink300))
                            ]),
                            SizedBox(height: 3.v)
                          ])),
                  SizedBox(height: 18.v),
                  Container(
                      width: 343.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 22.v),
                      decoration: AppDecoration.outlineBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("lbl_ahmad_khaidir".tr,
                                style: theme.textTheme.titleSmall),
                            Container(
                                width: 264.h,
                                margin: EdgeInsets.only(top: 19.v, right: 30.h),
                                child: Text("msg_3711_spring_hill".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall!
                                        .copyWith(height: 1.80))),
                            SizedBox(height: 20.v),
                            Text("lbl_99_1234567890".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 19.v),
                            Row(children: [
                              Text("lbl_edit".tr,
                                  style: CustomTextStyles.titleSmallPrimary),
                              Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Text("lbl_delete".tr,
                                      style:
                                          CustomTextStyles.titleSmallPink300))
                            ]),
                            SizedBox(height: 3.v)
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add_address".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addAddressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addAddressScreen.
  onTapAddaddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAddressScreen);
  }
}
