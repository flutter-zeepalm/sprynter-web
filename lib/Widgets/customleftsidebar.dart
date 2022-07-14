import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Utils/images_path.dart';
import 'package:spryntr/View/channelscustomer.dart';
import 'package:spryntr/View/channelsdelivery.dart';
import 'package:spryntr/View/channelstore.dart';

import '../Utils/colors.dart';
import '../Utils/typography.dart';

class CustomLeftSideNavBar extends StatefulWidget {
  const CustomLeftSideNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomLeftSideNavBar> createState() => _CustomLeftSideNavBarState();
}

class _CustomLeftSideNavBarState extends State<CustomLeftSideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25.w, right: 8.w),
          child: Row(
            children: [
              SvgPicture.asset(CustomAssets.kPieChartIcon),
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
              leading: SvgPicture.asset(CustomAssets.kTableLayoutIcon),
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
                            style:
                                CustomTextStyle.kExpansionTextHeading.copyWith(
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
                            style:
                                CustomTextStyle.kExpansionTextHeading.copyWith(
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
              leading: SvgPicture.asset(CustomAssets.kProfileuserIcon),
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
            SvgPicture.asset(CustomAssets.kDocumentIcon),
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
    );
  }
}
