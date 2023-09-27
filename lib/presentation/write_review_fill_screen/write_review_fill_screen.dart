import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:goldenjetfront/widgets/custom_rating_bar.dart';
import 'package:goldenjetfront/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WriteReviewFillScreen extends StatelessWidget {
  WriteReviewFillScreen({Key? key}) : super(key: key);

  TextEditingController addreviewoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                    text: "lbl_write_review".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 343.h,
                          child: Text("msg_please_write_overall".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall!
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 13.v),
                      CustomRatingBar(initialRating: 4, itemSize: 32),
                      SizedBox(height: 22.v),
                      Text("msg_write_your_review".tr,
                          style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      CustomTextFormField(
                          controller: addreviewoneController,
                          hintText: "lbl_add_review".tr,
                          hintStyle: CustomTextStyles.labelLargeBluegray300,
                          textInputAction: TextInputAction.done,
                          maxLines: 8,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 17.v)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_write_review".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v),
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

  /// Navigates to the reviewProductScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the reviewProductScreen.
  onTapWritereview(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.reviewProductScreen);
  }
}
