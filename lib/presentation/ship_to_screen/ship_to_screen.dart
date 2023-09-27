import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image_1.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';

class ShipToScreen extends StatelessWidget {
  const ShipToScreen({Key? key}) : super(key: key);

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
                        EdgeInsets.only(left: 16.h, top: 13.v, bottom: 14.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_ship_to".tr,
                    margin: EdgeInsets.only(left: 12.h)),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgPlusicon,
                      margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v),
                      onTap: () {
                        onTapPlusiconone(context);
                      })
                ]),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 4.v, right: 16.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 22.v);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ShipToItemWidget();
                    })),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapNext(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addressScreen.
  onTapPlusiconone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressScreen);
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the paymentMethodScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
  }
}
