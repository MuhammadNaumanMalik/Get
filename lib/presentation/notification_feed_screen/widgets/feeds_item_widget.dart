import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';

// ignore: must_be_immutable
class FeedsItemWidget extends StatelessWidget {
  FeedsItemWidget({
    Key? key,
    this.onTapFeeditem,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFeeditem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFeeditem?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProductimage,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
              margin: EdgeInsets.only(bottom: 40.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_new_product".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "msg_nike_air_zoom_pegasus2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.80,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_june_3_2015_5_06".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
