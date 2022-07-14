// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:spryntr/Models/channelcard.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Utils/colors.dart';

class CustomChannelCardsWidget extends StatefulWidget {
  ChannelCard channelCard;
  int currentIndex;
  CustomChannelCardsWidget(
      {Key? key, required this.channelCard, required this.currentIndex})
      : super(key: key);

  @override
  State<CustomChannelCardsWidget> createState() =>
      _CustomChannelCardsWidgetState();
}

class _CustomChannelCardsWidgetState extends State<CustomChannelCardsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 258.w,
      height: 134.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
              width: 1.2.w,
              color: widget.currentIndex == 0
                  ? CustomColors.kbrownIconColor
                  : CustomColors.kgreyColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.channelCard.title,
            style: widget.currentIndex == 0
                ? CustomTextStyle.kCardTextHeading
                : CustomTextStyle.kCardTextHeading
                    .copyWith(color: CustomColors.kgreyColor),
          ),
          Text(
            widget.channelCard.subTitle,
            style: widget.currentIndex == 0
                ? CustomTextStyle.kCardTextHeading
                : CustomTextStyle.kCardTextHeading
                    .copyWith(color: CustomColors.kgreyColor),
          ),
        ],
      ),
    );
  }
}
