// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Utils/colors.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Models/dashboardcard.dart';

class CustomCardWidget extends StatelessWidget {
  DasboardCardsData myCard;
  int currentIndex;
  CustomCardWidget({Key? key, required this.myCard, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 258.w,
      height: 134.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
              width: 1.2.w,
              color: currentIndex == 0
                  ? CustomColors.kbrownIconColor
                  : CustomColors.kgreyColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            myCard.title,
            style: currentIndex == 0
                ? CustomTextStyle.kCardTextHeading
                : CustomTextStyle.kCardTextHeading.copyWith(
                    color: CustomColors.kgreyColor,
                  ),
          ),
          Text(
            myCard.subTitle,
            style: currentIndex == 0
                ? CustomTextStyle.kCardTextHeading.copyWith(fontSize: 40.sp)
                : CustomTextStyle.kCardTextHeading
                    .copyWith(color: CustomColors.kgreyColor, fontSize: 40.sp),
          ),
        ],
      ),
    );
  }
}
