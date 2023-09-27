import '../explore_page/widgets/explore_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image_1.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_searchview.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  ExplorePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSearchview(
                    margin: EdgeInsets.only(left: 16.h),
                    hintText: "lbl_search_product".tr,
                    controller: searchController),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgDownload,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 16.h),
                      onTap: () {
                        onTapDownloadone(context);
                      }),
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 16.v, right: 32.h),
                      child: Stack(alignment: Alignment.topRight, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgNotificationicon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgNotificationico(context);
                            }),
                        CustomImageView(
                            svgPath: ImageConstant.imgClosePink300,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                                left: 14.h, right: 2.h, bottom: 16.v))
                      ]))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_man_fashion".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      Expanded(
                          child: GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 93.v,
                                      crossAxisCount: 4,
                                      mainAxisSpacing: 21.h,
                                      crossAxisSpacing: 21.h),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return ExploreItemWidget();
                              })),
                      SizedBox(height: 23.v),
                      Text("lbl_woman_fashion".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        right: 10.h, bottom: 14.v),
                                    child: Column(children: [
                                      CustomIconButton(
                                          height: 70.adaptSize,
                                          width: 70.adaptSize,
                                          padding: EdgeInsets.all(23.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgDressicon)),
                                      SizedBox(height: 8.v),
                                      Text("lbl_dress".tr,
                                          style: CustomTextStyles.bodySmall10)
                                    ]))),
                            Expanded(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: Column(children: [
                                      CustomIconButton(
                                          height: 70.adaptSize,
                                          width: 70.adaptSize,
                                          padding: EdgeInsets.all(23.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgWomantshirticon)),
                                      SizedBox(height: 9.v),
                                      SizedBox(
                                          width: 41.h,
                                          child: Text("lbl_woman_t_shirt".tr,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmall10
                                                  .copyWith(height: 1.50)))
                                    ]))),
                            Expanded(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: Column(children: [
                                      CustomIconButton(
                                          height: 70.adaptSize,
                                          width: 70.adaptSize,
                                          padding: EdgeInsets.all(23.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgWomanpantsiconPrimary)),
                                      SizedBox(height: 9.v),
                                      SizedBox(
                                          width: 41.h,
                                          child: Text("lbl_woman_pants".tr,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmall10
                                                  .copyWith(height: 1.50)))
                                    ]))),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, bottom: 14.v),
                                    child: Column(children: [
                                      CustomIconButton(
                                          height: 70.adaptSize,
                                          width: 70.adaptSize,
                                          padding: EdgeInsets.all(23.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgSkirticon)),
                                      SizedBox(height: 7.v),
                                      Text("lbl_skirt".tr,
                                          style: CustomTextStyles.bodySmall10)
                                    ])))
                          ]),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 16.v, right: 91.h, bottom: 5.v),
                          child: Row(children: [
                            Column(children: [
                              CustomIconButton(
                                  height: 70.adaptSize,
                                  width: 70.adaptSize,
                                  padding: EdgeInsets.all(23.h),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgWomanbagicon)),
                              SizedBox(height: 9.v),
                              Text("lbl_woman_bag".tr,
                                  style: CustomTextStyles.bodySmall10)
                            ]),
                            Padding(
                                padding: EdgeInsets.only(left: 21.h),
                                child: Column(children: [
                                  CustomIconButton(
                                      height: 70.adaptSize,
                                      width: 70.adaptSize,
                                      padding: EdgeInsets.all(23.h),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgHighheelsicon)),
                                  SizedBox(height: 9.v),
                                  Text("lbl_high_heels".tr,
                                      style: CustomTextStyles.bodySmall10)
                                ])),
                            Padding(
                                padding: EdgeInsets.only(left: 21.h),
                                child: Column(children: [
                                  CustomIconButton(
                                      height: 70.adaptSize,
                                      width: 70.adaptSize,
                                      padding: EdgeInsets.all(23.h),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgBikiniicon)),
                                  SizedBox(height: 7.v),
                                  Text("lbl_bikini".tr,
                                      style: CustomTextStyles.bodySmall10)
                                ]))
                          ]))
                    ]))));
  }

  /// Navigates to the favoriteProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the favoriteProductScreen.
  onTapDownloadone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteProductScreen);
  }

  /// Navigates to the notificationOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the notificationOneScreen.
  onTapImgNotificationico(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationOneScreen);
  }
}
