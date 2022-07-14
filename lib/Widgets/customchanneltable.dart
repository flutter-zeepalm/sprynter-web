// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:spryntr/Models/channeltable.dart';

import '../Utils/colors.dart';
import '../Utils/icondata.dart';
import '../Utils/typography.dart';

class CustomChannelTable extends StatefulWidget {
  ChannelTable customersList;
  int currentIndex;
  CustomChannelTable(
      {Key? key, required this.customersList, required this.currentIndex})
      : super(key: key);

  @override
  State<CustomChannelTable> createState() => _CustomChannelTableState();
}

class _CustomChannelTableState extends State<CustomChannelTable> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          onTap: () {
            showAlertBoxMethod(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: widget.currentIndex % 2 == 0
                  ? CustomColors.kContainerColor
                  : CustomColors.kCoolGrey,
              borderRadius: BorderRadius.circular(7.r),
            ),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
                  width: 160.w,
                  child: Text(widget.customersList.name,
                      style:  CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600)),
                ),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    width: 185.w,
                    child: Center(
                        child: Text(widget.customersList.email,
                            style:  CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600)))),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    width: 190.w,
                    child: Center(
                        child: Text(widget.customersList.phone,
                            style:  CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600)))),
                Container(
                    width: 200.w,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Center(
                        child: Text(widget.customersList.totalspent,
                            style:  CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600)))),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      child: Center(
                          child: Text(widget.customersList.dateRegistered,
                              style:  CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600)))),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<dynamic> showAlertBoxMethod(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Actions"),
        actions: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() => Get.back()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Delete'),
                      Icon(
                        CustomIconData.kDelete,
                        color: CustomColors.kbrownIconColor,
                        size: 26.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (() => Get.back()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Edit'),
                      Icon(
                        CustomIconData.kEdit,
                        size: 26.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
