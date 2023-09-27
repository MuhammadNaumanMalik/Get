import '../choose_credit_or_debit_card_screen/widgets/slidervolume_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image_1.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ChooseCreditOrDebitCardScreen extends StatelessWidget {
  ChooseCreditOrDebitCardScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

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
                    text: "lbl_choose_card".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgPlusicon,
                      margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
                      onTap: () {
                        onTapPlusiconone(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                child: Column(children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                          height: 190.v,
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
                        return SlidervolumeItemWidget();
                      }),
                  SizedBox(height: 16.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.blue50,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_pay_766_86".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapPay76686(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addPaymentScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addPaymentScreen.
  onTapPlusiconone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addPaymentScreen);
  }

  /// Navigates to the successScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the successScreen.
  onTapPay76686(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successScreen);
  }
}
