import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:goldenjetfront/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LailyfaFebrinaCardScreen extends StatelessWidget {
  LailyfaFebrinaCardScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController securityCodeController = TextEditingController();

  TextEditingController cardholdernameController = TextEditingController();

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
                        EdgeInsets.only(left: 16.h, top: 14.v, bottom: 15.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "msg_lailyfa_febrina".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 23.v),
                                        decoration: AppDecoration.fillPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVolume,
                                                  height: 22.v,
                                                  width: 36.h,
                                                  margin: EdgeInsets.only(
                                                      left: 3.h)),
                                              SizedBox(height: 30.v),
                                              Text("msg_6326_9124".tr,
                                                  style: theme
                                                      .textTheme.headlineSmall),
                                              SizedBox(height: 17.v),
                                              Row(children: [
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v),
                                                        child: Text(
                                                            "lbl_card_holder"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer10))),
                                                Opacity(
                                                    opacity: 0.5,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 37.h),
                                                        child: Text(
                                                            "lbl_card_save".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallOnPrimaryContainer10)))
                                              ]),
                                              SizedBox(height: 1.v),
                                              Row(children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 3.v),
                                                    child: Text(
                                                        "lbl_lailyfa_febrina"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .labelMediumOnPrimaryContainer)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 32.h,
                                                        bottom: 3.v),
                                                    child: Text("lbl_06_24".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumOnPrimaryContainer))
                                              ])
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("lbl_card_number".tr,
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: cardNumberController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 12.v),
                                        hintText: "msg_1231_2312_3123".tr,
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 24.v),
                                        child: Text("lbl_expiration_date".tr,
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: expirationDateController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 11.v),
                                        hintText: "lbl_12_12".tr,
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v)),
                                    SizedBox(height: 29.v),
                                    Text("lbl_security_code".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    CustomTextFormField(
                                        controller: securityCodeController,
                                        hintText: "lbl_1219".tr,
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("lbl_card_holder2".tr,
                                            style: theme.textTheme.titleSmall)),
                                    CustomTextFormField(
                                        controller: cardholdernameController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 12.v),
                                        hintText: "lbl_lailyfa_febrina".tr,
                                        hintStyle: CustomTextStyles
                                            .labelLargeBluegray300SemiBold,
                                        textInputAction: TextInputAction.done,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 15.v))
                                  ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_save".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapSave(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the creditCardAndDebitScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the creditCardAndDebitScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }
}
