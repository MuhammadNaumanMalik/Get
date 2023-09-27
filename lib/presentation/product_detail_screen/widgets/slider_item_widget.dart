import 'package:flutter/material.dart';
import 'package:goldenjetfront/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductimage238x375,
      height: 238.v,
      width: 375.h,
    );
  }
}
