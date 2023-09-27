import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image_1.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_searchview_1.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: AppbarSearchview1(
                    margin: EdgeInsets.only(left: 16.h),
                    hintText: "lbl_nike_air_max".tr,
                    controller: searchController),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgMicicon,
                      margin: EdgeInsets.all(16.h))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 11.v),
                child: Column(children: [
                  Divider(indent: 6.h),
                  SizedBox(height: 9.v),
                  CustomElevatedButton(
                      height: 54.v,
                      text: "msg_nike_air_max_2703".tr,
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: theme.textTheme.bodySmall!,
                      onTap: () {
                        onTapNikeairmax(context);
                      }),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSearchresult(context);
                      },
                      child: Text("msg_nike_air_vapormax".tr,
                          style: theme.textTheme.bodySmall)),
                  Text("msg_nike_air_max_2703".tr,
                      style: theme.textTheme.bodySmall),
                  Text("msg_nike_air_max_2704".tr,
                      style: theme.textTheme.bodySmall),
                  Text("msg_nike_air_vapormax2".tr,
                      style: theme.textTheme.bodySmall),
                  SizedBox(height: 5.v),
                  Text("msg_nike_air_max_97".tr,
                      style: theme.textTheme.bodySmall)
                ]))));
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchResultScreen.
  onTapNikeairmax(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the searchResultScreen.
  onTapTxtSearchresult(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchResultScreen);
  }
}
