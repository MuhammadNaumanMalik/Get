import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';

// ignore: must_be_immutable
class OrderItemWidget extends StatelessWidget {
  OrderItemWidget({
    Key? key,
    this.onTapOrder,
  }) : super(
          key: key,
        );

  VoidCallback? onTapOrder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOrder?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.v),
        decoration: AppDecoration.outlineBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_sdg1345kjd".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "msg_order_at_e_com".tr,
                    style: CustomTextStyles.bodySmallOnPrimary_1,
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.v),
            Divider(),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 14.v,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_order_status".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                    ),
                  ),
                  Text(
                    "lbl_shipping".tr,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 9.v,
                right: 16.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_items".tr,
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                    ),
                  ),
                  Text(
                    "msg_1_items_purchased".tr,
                    style: CustomTextStyles.bodySmallOnPrimary,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.h, 9.v, 16.h, 1.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_price".tr,
                      style: CustomTextStyles.bodySmallOnPrimary_1,
                    ),
                  ),
                  Text(
                    "lbl_299_43".tr,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
