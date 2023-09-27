import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';
import 'package:goldenjetfront/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddCardScreen extends StatelessWidget {
  AddCardScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  TextEditingController securityCodeController = TextEditingController();

  TextEditingController cardNumberController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "lbl_add_card".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 27.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_card_number".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: cardNumberController,
                              hintText: "msg_enter_card_number".tr,
                              textInputType: TextInputType.number),
                          SizedBox(height: 24.v),
                          Text("lbl_expiration_date".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: expirationDateController,
                              hintText: "lbl_expiration_date".tr,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 15.v)),
                          SizedBox(height: 29.v),
                          Text("lbl_security_code".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 11.v),
                          CustomTextFormField(
                              controller: securityCodeController,
                              hintText: "lbl_security_code".tr,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 15.v)),
                          SizedBox(height: 23.v),
                          Text("lbl_card_holder2".tr,
                              style: theme.textTheme.titleSmall),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: cardNumberController1,
                              hintText: "msg_enter_card_number".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number),
                          SizedBox(height: 5.v)
                        ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_add_card".tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddcard(context);
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
  onTapAddcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }
}
