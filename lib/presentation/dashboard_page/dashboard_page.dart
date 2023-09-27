import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbann_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image_1.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgSearch,
                    margin:
                        EdgeInsets.only(left: 32.h, top: 20.v, bottom: 20.v)),
                title: AppbarSubtitle1(
                    text: "lbl_search_product".tr,
                    margin: EdgeInsets.only(left: 8.h),
                    onTap: () {
                      onTapSearchproduct(context);
                    }),
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
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 16.h),
                                  child: CarouselSlider.builder(
                                      options: CarouselOptions(
                                          height: 206.v,
                                          initialPage: 0,
                                          autoPlay: true,
                                          viewportFraction: 1.0,
                                          enableInfiniteScroll: false,
                                          scrollDirection: Axis.horizontal,
                                          onPageChanged: (index, reason) {
                                            sliderIndex = index;
                                          }),
                                      itemCount: 1,
                                      itemBuilder: (context, index, realIndex) {
                                        return SliderofferbannItemWidget();
                                      })),
                              SizedBox(height: 16.v),
                              SizedBox(
                                  height: 8.v,
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: sliderIndex,
                                      count: 1,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor:
                                              theme.colorScheme.primary,
                                          dotColor: appTheme.blue50,
                                          dotHeight: 8.v,
                                          dotWidth: 8.h))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 25.v, right: 16.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_category".tr,
                                            style: theme.textTheme.titleSmall),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtMorecategorylin(context);
                                            },
                                            child: Text("lbl_more_category".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary))
                                      ])),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 108.v,
                                      child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 12.h);
                                          },
                                          itemCount: 6,
                                          itemBuilder: (context, index) {
                                            return CategoriesItemWidget();
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapFlashsaleheader(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 23.v, right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_flash_sale".tr,
                                                style:
                                                    theme.textTheme.titleSmall),
                                            Text("lbl_see_more".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]))),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 238.v,
                                      child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 16.h);
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return FlashsaleItemWidget(
                                                onTapProduct: () {
                                              onTapProduct(context);
                                            });
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapMegasaleheader(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 23.v, right: 16.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("lbl_mega_sale".tr,
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Text("lbl_see_more".tr,
                                                style: CustomTextStyles
                                                    .titleSmallPrimary)
                                          ]))),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: 238.v,
                                      child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 16.h);
                                          },
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return MegasaleItemWidget(
                                                onTapProduct: () {
                                              onTapProduct(context);
                                            });
                                          }))),
                              SizedBox(height: 29.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRecomendedproduct,
                                  height: 206.v,
                                  width: 343.h,
                                  radius: BorderRadius.circular(5.h)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 16.v, right: 16.h),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent: 283.v,
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 13.h,
                                              crossAxisSpacing: 13.h),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return DashboardItemWidget(
                                            onTapProduct: () {
                                          onTapProduct(context);
                                        });
                                      }))
                            ]))))));
  }

  /// Navigates to the searchScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchScreen.
  onTapSearchproduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
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

  /// Navigates to the listCategoryScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listCategoryScreen.
  onTapTxtMorecategorylin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listCategoryScreen);
  }

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the offerScreen.
  onTapFlashsaleheader(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offerScreen);
  }

  /// Navigates to the offerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the offerScreen.
  onTapMegasaleheader(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.offerScreen);
  }

  /// Navigates to the productDetailScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the productDetailScreen.
  onTapProduct(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
    Navigator.pushNamed(context, AppRoutes.productDetailScreen);
  }
}
