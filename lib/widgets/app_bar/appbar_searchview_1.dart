import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';
import 'package:goldenjetfront/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview1 extends StatelessWidget {
  AppbarSearchview1({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 263.h,
        controller: controller,
        hintText: "lbl_nike_air_max".tr,
        hintStyle: CustomTextStyles.labelLargeOnPrimary,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 16.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearch,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 46.v,
        ),
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
          child: CustomImageView(
            svgPath: ImageConstant.imgClearIcon,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 46.v,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 13.v),
      ),
    );
  }
}
