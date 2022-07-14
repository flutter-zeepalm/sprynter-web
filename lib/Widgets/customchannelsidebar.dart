import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Utils/colors.dart';
import '../Utils/icondata.dart';
import '../Utils/typography.dart';
import '../View/channelscustomer.dart';
import '../View/channelsdelivery.dart';
import '../View/channelstore.dart';

class CustomchannelSideBarWidget extends StatelessWidget {
  const CustomchannelSideBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 8.w),
            child: Row(
              children: [
                Transform.rotate(
                    angle: 180,
                    child: Icon(
                      CustomIconData.kPiChartIcon,
                      color: CustomColors.kbrownIconColor,
                      size: 20.sp,
                    )),
                SizedBox(
                  width: 16.w,
                ),
                Text('Overview',
                    style: CustomTextStyle.kTextHeading.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.h,
            ),
            child: Container(
              width: 225.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      width: 1.2.w, color: CustomColors.kDividerColor)),
              child: ExpansionTile(
                collapsedIconColor: CustomColors.kBlackIconColor,
                collapsedTextColor: CustomColors.kbrownIconColor,
                textColor: CustomColors.kbrownIconColor,
                initiallyExpanded: true,
                leading: Icon(
                  CustomIconData.kTableLayout,
                  color: CustomColors.kBlackIconColor,
                  size: 18.sp,
                ),
                title: Text('Channel',
                    style: CustomTextStyle.kExpansionTextHeading.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.kBlackIconColor,
                    )),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.to(() => const ChannelCustomer());
                          },
                          child: Text('Customers',
                              style: CustomTextStyle.kExpansionTextHeading
                                  .copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: CustomColors.kBlackIconColor,
                              ))),
                      SizedBox(
                        height: 25.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(() => const ChannelStoreList());
                          },
                          child: Text('Stores',
                              style: CustomTextStyle.kExpansionTextHeading
                                  .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                color: CustomColors.kBlackIconColor,
                              ))),
                      SizedBox(
                        height: 25.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const ChannelsDelivery());
                        },
                        child: Text(
                          'Delivery',
                          style: CustomTextStyle.kExpansionTextHeading.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.kBlackIconColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.h, right: 13.w, left: 12.w),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                      width: 1.2.w, color: CustomColors.kDividerColor)),
              child: ExpansionTile(
                collapsedIconColor: CustomColors.kBlackIconColor,
                collapsedTextColor: CustomColors.kbrownIconColor,
                textColor: CustomColors.kbrownIconColor,
                initiallyExpanded: true,
                leading: Icon(
                  CustomIconData.kPerson,
                  color: CustomColors.kBlackIconColor,
                  size: 18.sp,
                ),
                title: Text('User',
                    style: CustomTextStyle.kExpansionTextHeading.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.kBlackIconColor,
                    )),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Add Admin',
                          style: CustomTextStyle.kExpansionTextHeading.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.kBlackIconColor,
                          )),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text('Administrators',
                          style: CustomTextStyle.kExpansionTextHeading.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.kBlackIconColor,
                          )),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Divider(
            height: 1,
            color: CustomColors.kDividerColor,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, left: 12.w, right: 12.w),
            child: Row(children: [
              Icon(
                CustomIconData.kDocs,
                color: CustomColors.kBlackIconColor,
              ),
              SizedBox(
                width: 19.w,
              ),
              Text('Docs',
                  style: CustomTextStyle.kExpansionTextHeading.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.kBlackIconColor,
                  ))
            ]),
          ),
        ],
      ),
    );
  }
}
