import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';

class ListCategoryScreen extends StatelessWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_category".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftPrimary,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        onTap: () {
                                          onTapImgArrowleftthree(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_shirt".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimary))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              decoration: AppDecoration.fillBlue,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgBikiniicon,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_bikini".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_dress".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgManworkequipment,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 3.v, bottom: 2.v),
                                        child: Text("lbl_work_equipment".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTrash,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_man_pants".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          GestureDetector(
                              onTap: () {
                                onTapManshoes(context);
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.all(16.h),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgTicket,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 3.v),
                                            child: Text("lbl_man_shoes".tr,
                                                style:
                                                    theme.textTheme.labelLarge))
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgForward,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_man_underwear".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgAirplane,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_man_t_shirt".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTrashPrimary,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 4.v),
                                        child: Text("lbl_woman_bag".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgWomanpantsicon,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 2.v, bottom: 3.v),
                                        child: Text("lbl_woman_pants".tr,
                                            style: theme.textTheme.labelLarge))
                                  ])),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgWomanshoesicon,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 3.v, bottom: 2.v),
                                        child: Text("lbl_high_heels".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftthree(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchResultScreen.
  onTapManshoes(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }
}
