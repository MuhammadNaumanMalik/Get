import '../offer_screen/widgets/offer_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image_1.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

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
                    text: "msg_super_flash_sale".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgNavexplore,
                      margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 17.v),
                      onTap: () {
                        onTapSearchiconone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
                child: Column(children: [
                  SizedBox(
                      height: 206.v,
                      width: 343.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPromotionimage,
                            height: 206.v,
                            width: 343.h,
                            radius: BorderRadius.circular(5.h),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 209.h,
                                          child: Text(
                                              "msg_super_flash_sale_50".tr,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: theme
                                                  .textTheme.headlineSmall!
                                                  .copyWith(height: 1.50))),
                                      SizedBox(height: 31.v),
                                      Row(children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.h, vertical: 8.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Text("lbl_08".tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.h,
                                                top: 10.v,
                                                bottom: 9.v),
                                            child: Text("lbl".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer)),
                                        Container(
                                            margin: EdgeInsets.only(left: 4.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 9.h, vertical: 8.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Text("lbl_34".tr,
                                                style: theme
                                                    .textTheme.titleMedium)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.h,
                                                top: 10.v,
                                                bottom: 9.v),
                                            child: Text("lbl".tr,
                                                style: CustomTextStyles
                                                    .titleSmallOnPrimaryContainer)),
                                        Container(
                                            margin: EdgeInsets.only(left: 4.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.h,
                                                vertical: 8.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                            child: Text("lbl_52".tr,
                                                style: theme
                                                    .textTheme.titleMedium))
                                      ])
                                    ])))
                      ])),
                  SizedBox(height: 16.v),
                  Expanded(
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 283.v,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 13.h,
                                  crossAxisSpacing: 13.h),
                          physics: BouncingScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return OfferScreenItemWidget(onTapProduct: () {
                              onTapProduct(context);
                            });
                          }))
                ]))));
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the productDetailScreen.
  onTapProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchScreen.
  onTapSearchiconone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
