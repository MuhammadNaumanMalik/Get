import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:goldenjetfront/widgets/custom_icon_button.dart';
import 'package:goldenjetfront/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterFormScreen extends StatelessWidget {
  RegisterFormScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              padding: EdgeInsets.all(20.h),
                              decoration: IconButtonStyleHelper.fillPrimary,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClose)),
                          SizedBox(height: 16.v),
                          Text("msg_let_s_get_started".tr,
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 9.v),
                          Text("msg_create_an_new_account".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 30.v),
                          CustomTextFormField(
                              controller: fullNameController,
                              hintText: "lbl_full_name".tr,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgUser)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "lbl_your_email".tr,
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: passwordController,
                              hintText: "lbl_password".tr,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 8.v),
                          CustomTextFormField(
                              controller: passwordController1,
                              hintText: "lbl_password_again".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      16.h, 12.v, 10.h, 12.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 48.v),
                              obscureText: true,
                              contentPadding: EdgeInsets.only(
                                  top: 15.v, right: 30.h, bottom: 15.v)),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(text: "lbl_sign_up".tr),
                          SizedBox(height: 20.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtHaveanaccount(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_have_an_account2".tr,
                                        style: theme.textTheme.bodySmall),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .labelLargePrimary_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v)
                        ])))));
  }

  onTapTxtHaveanaccount(BuildContext context) {
    // TODO: implement Actions
  }
}
