import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  const ExploreItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 70.adaptSize,
          width: 70.adaptSize,
          padding: EdgeInsets.all(23.h),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowleftPrimary,
          ),
        ),
        SizedBox(height: 7.v),
        Text(
          "lbl_man_shirt".tr,
          style: CustomTextStyles.bodySmall10,
        ),
      ],
    );
  }
}
