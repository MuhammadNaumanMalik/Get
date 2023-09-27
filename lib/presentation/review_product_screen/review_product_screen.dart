import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:goldenjetfront/widgets/custom_rating_bar.dart';

class ReviewProductScreen extends StatelessWidget {
  const ReviewProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 43.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 19.h, top: 16.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_5_review2".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 19.h, right: 23.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgProfilepicture,
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          radius: BorderRadius.circular(24.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.h,
                                              top: 2.v,
                                              bottom: 4.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_james_lawson".tr,
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 4.v),
                                                CustomRatingBar(
                                                    initialRating: 5,
                                                    itemSize: 16)
                                              ]))
                                    ]),
                                    SizedBox(height: 18.v),
                                    SizedBox(
                                        width: 333.h,
                                        child: Text("msg_air_max_are_always".tr,
                                            maxLines: 5,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.80))),
                                    SizedBox(height: 16.v),
                                    Text("msg_december_10_2016".tr,
                                        style: CustomTextStyles.bodySmall10),
                                    SizedBox(height: 32.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProfilepicture48x48,
                                              height: 48.adaptSize,
                                              width: 48.adaptSize,
                                              radius:
                                                  BorderRadius.circular(24.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h, bottom: 4.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_laura_octavian".tr,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 5.v),
                                                    CustomRatingBar(
                                                        initialRating: 4,
                                                        itemSize: 16)
                                                  ]))
                                        ]),
                                    Container(
                                        width: 317.h,
                                        margin: EdgeInsets.only(
                                            top: 18.v, right: 15.h),
                                        child: Text(
                                            "msg_this_is_really_amazing".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.80))),
                                    SizedBox(height: 16.v),
                                    Text("msg_december_10_2016".tr,
                                        style: CustomTextStyles.bodySmall10),
                                    SizedBox(height: 34.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgProfilepicture1,
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          radius: BorderRadius.circular(24.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.h,
                                              top: 3.v,
                                              bottom: 4.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_jhonson_bridge".tr,
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 3.v),
                                                CustomRatingBar(
                                                    initialRating: 5,
                                                    itemSize: 16)
                                              ]))
                                    ]),
                                    SizedBox(height: 18.v),
                                    SizedBox(
                                        width: 331.h,
                                        child: Text(
                                            "msg_air_max_are_always2".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.80))),
                                    SizedBox(height: 16.v),
                                    Text("msg_december_10_2016".tr,
                                        style: CustomTextStyles.bodySmall10),
                                    SizedBox(height: 26.v),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProfilepicture48x48,
                                              height: 48.adaptSize,
                                              width: 48.adaptSize,
                                              radius:
                                                  BorderRadius.circular(24.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h, bottom: 4.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_laura_octavian".tr,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 5.v),
                                                    CustomRatingBar(
                                                        initialRating: 4,
                                                        itemSize: 16)
                                                  ]))
                                        ]),
                                    Container(
                                        width: 317.h,
                                        margin: EdgeInsets.only(
                                            top: 18.v, right: 15.h),
                                        child: Text(
                                            "msg_this_is_really_amazing".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.80))),
                                    SizedBox(height: 16.v),
                                    Text("msg_december_10_2016".tr,
                                        style: CustomTextStyles.bodySmall10),
                                    SizedBox(height: 34.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgProfilepicture1,
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          radius: BorderRadius.circular(24.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.h,
                                              top: 3.v,
                                              bottom: 4.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_jhonson_bridge".tr,
                                                    style: theme
                                                        .textTheme.titleSmall),
                                                SizedBox(height: 3.v),
                                                CustomRatingBar(
                                                    initialRating: 5,
                                                    itemSize: 16)
                                              ]))
                                    ]),
                                    SizedBox(height: 18.v),
                                    SizedBox(
                                        width: 331.h,
                                        child: Text(
                                            "msg_air_max_are_always2".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall!
                                                .copyWith(height: 1.80))),
                                    SizedBox(height: 16.v),
                                    Text("msg_december_10_2016".tr,
                                        style: CustomTextStyles.bodySmall10)
                                  ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_write_review".tr,
                margin: EdgeInsets.only(left: 19.h, right: 13.h, bottom: 58.v),
                onTap: () {
                  onTapWritereview(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the writeReviewFillScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the writeReviewFillScreen.
  onTapWritereview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.writeReviewFillScreen);
  }
}
