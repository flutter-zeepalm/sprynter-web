// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_button/group_button.dart';
import 'package:spryntr/Utils/colors.dart';
import 'package:spryntr/Utils/icondata.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Models/channeltable.dart';
import 'customchanneltable.dart';

class CustomChannelContainerWidget extends StatefulWidget {
  String title, subTitle;
  CustomChannelContainerWidget(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  State<CustomChannelContainerWidget> createState() =>
      _CustomChannelContainerWidgetState();
}

class _CustomChannelContainerWidgetState
    extends State<CustomChannelContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
      child: Container(
        width: 1218.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: CustomColors.kgreyColor,
            width: 1.0.w,
          ),
          borderRadius: BorderRadius.circular(12.r),
          color: CustomColors.kLightWhite,
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 20.w),
                  child: SizedBox(
                    width: 402.w,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.title,
                                  style: CustomTextStyle
                                      .kTransactionsTextHeading
                                      .copyWith(fontSize: 20.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(widget.subTitle,
                                    style: CustomTextStyle.ksubTitleTextStyle
                                        .copyWith(fontWeight: FontWeight.w600))
                              ])
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 24.h, left: 161.w, right: 24.w),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CustomColors.kgreyColor,
                        width: 1.0.w,
                      ),
                      borderRadius: BorderRadius.circular(33.r),
                      color: CustomColors.kLightWhite,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: CustomColors.klightGray,
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
            child: SizedBox(
              width: 1186.w,
              child: Column(children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.r),
                      color: CustomColors.kCoolGrey),
                  child: Row(children: [
                    SizedBox(
                        width: 170.w,
                        child: Text('Name',
                            style: CustomTextStyle.ksubTitleTextStyle
                                .copyWith(fontWeight: FontWeight.w600,color: CustomColors.klightGery))),
                    SizedBox(
                        width: 234.w,
                        child: Text(
                          'Email',
                          style: CustomTextStyle.ksubTitleTextStyle
                              .copyWith(fontWeight: FontWeight.w600,color: CustomColors.klightGery),
                        )),
                    SizedBox(
                        width: 190.w,
                        child: Text('Phone',
                            style: CustomTextStyle.ksubTitleTextStyle
                                .copyWith(fontWeight: FontWeight.w600,color: CustomColors.klightGery))),
                    SizedBox(
                        width: 280.w,
                        child: Text('Total spent',
                            style: CustomTextStyle.ksubTitleTextStyle
                                .copyWith(fontWeight: FontWeight.w600,color: CustomColors.klightGery))),
                    SizedBox(
                        child: Text('Date Registered',
                            style: CustomTextStyle.ksubTitleTextStyle
                                .copyWith(fontWeight: FontWeight.w600,color: CustomColors.klightGery)))
                  ]),
                ),
                SizedBox(
                  height: 500.h,
                  child: ListView.separated(
                    itemCount: channelList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return CustomChannelTable(
                        customersList: channelList[index],
                        currentIndex: index,
                      );
                    },
                  ),
                )
              ]),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 7.h,
                  horizontal: 7.w,
                ),
                child: GroupButton(
                  options: GroupButtonOptions(
                      groupingType: GroupingType.row,
                      buttonHeight: 40.h,
                      buttonWidth: 40.w,
                      selectedBorderColor: CustomColors.kBackgroundColor,
                      selectedColor: CustomColors.kbrownIconColor,
                      unselectedColor: CustomColors.kBackgroundColor,
                      unselectedBorderColor: CustomColors.kBlackIconColor,
                      borderRadius: BorderRadius.circular(6)),
                  isRadio: false,
                  buttons: const ["1", "2", "3", ">"],
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              Icon(
                CustomIconData.kAdd,
                color: CustomColors.kbrownIconColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text('Add Store',
                  style: CustomTextStyle.kTextHeading
                      .copyWith(fontWeight: FontWeight.bold))
            ],
          )
        ]),
      ),
    );
  }
}
