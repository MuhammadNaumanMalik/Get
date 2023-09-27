import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_image.dart';
import 'package:goldenjetfront/widgets/app_bar/appbar_subtitle.dart';
import 'package:goldenjetfront/widgets/app_bar/custom_app_bar.dart';
import 'package:goldenjetfront/widgets/custom_elevated_button.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

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
                    text: "lbl_payment".tr,
                    margin: EdgeInsets.only(left: 12.h))),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  CustomElevatedButton(
                      text: "msg_credit_card_or_debit".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCreditCardIcon)),
                      onTap: () {
                        onTapCreditcardor(context);
                      },
                      isDisabled: true),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(16.h),
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgPaypalicon,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 4.v),
                            child: Text("lbl_paypal".tr,
                                style: theme.textTheme.labelLarge))
                      ])),
                  SizedBox(height: 5.v),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(16.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgAirplanePrimary,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 2.v, bottom: 3.v),
                                child: Text("lbl_bank_transfer".tr,
                                    style: theme.textTheme.labelLarge))
                          ]))
                ]))));
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
  onTapCreditcardor(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAndDebitScreen);
  }
}
