// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:spryntr/Models/topcustomers.dart';
import 'package:spryntr/Models/topstores.dart';
import 'package:spryntr/Models/dashboardtransactionstable.dart';

import '../Models/dashboardcard.dart';
import '../Models/incomeestimatetrend.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';
import 'customcard.dart';
import 'customdropdownbutton.dart';

import 'customfooterwidget.dart';
import 'customgraph.dart';
import 'customtopcustomer.dart';
import 'customtostore.dart';
import 'customtransactiontable.dart';
import 'incometrended.dart';

class CustomRightSideWidget extends StatefulWidget {
  const CustomRightSideWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomRightSideWidget> createState() => _CustomRightSideWidgetState();
}

class _CustomRightSideWidgetState extends State<CustomRightSideWidget> {
  String dropdownvalue = 'Filter';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        // top cards
        Padding(
          padding: EdgeInsets.only(top: 16.h, right: 30.w, left: 25.w),
          child: SizedBox(
            height: 200.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return CustomCardWidget(
                  myCard: listOfCards[index],
                  currentIndex: index,
                );
              },
              itemCount: listOfCards.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 30.w,
                );
              },
            ),
          ),
        ),
        // center income container
        Padding(
          padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
          child: Container(
            width: 1218.w,
            height: 564.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.kgreyColor,
                width: 1.0.w,
              ),
              borderRadius: BorderRadius.circular(12.r),
              color: CustomColors.kLightWhite,
            ),
            child: Row(children: [
              SizedBox(
                width: 900.w,
                height: Get.height,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, top: 43.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Income Estimate trend',
                                style: CustomTextStyle.kCardTextHeading
                                    .copyWith(
                                        color: CustomColors.kBlackIconColor,
                                        fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Text(
                                'as of 25 May 2021, 09:41 PM',
                                style: CustomTextStyle.kIncomeSubTextStyle,
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Expanded(child: GraphBar()),
                    ]),
              ),
              SizedBox(
                width: 230.w,
                height: Get.height,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return IncomeEstimatetrendWidget(
                      incomeEstimatetrend: incomeList[index],
                    );
                  },
                  separatorBuilder: (contex, int index) {
                    return Divider(
                      height: 1,
                      color: CustomColors.kgreyColor,
                    );
                  },
                  itemCount: incomeList.length,
                ),
              ),
            ]),
          ),
        ),
        // center Transactions
        Padding(
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
                              Text(
                                'Transactions',
                                style: CustomTextStyle.kTransactionsTextHeading
                                    .copyWith(fontSize: 20.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('This is a list of latest transactions.',
                                  style: CustomTextStyle
                                      .kTransactionsAndDateTimeTextStyle
                                      .copyWith(
                                    color: CustomColors.kSamiDarkGreyColor,
                                  ))
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 24.h, left: 161.w, right: 24.w),
                      child: Container(
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
                  SizedBox(
                    width: 200.w,
                    child: const CustomDropDownButton(),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          color: CustomColors.kCoolGrey),
                      child: Row(children: [
                        SizedBox(
                            width: 400.w,
                            child: Text(
                              'TRANSACTION',
                              style: CustomTextStyle.ksubTitleTextStyle
                                  .copyWith(fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                            width: 340.w,
                            child: Text('DATE',
                                style: CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600))),
                        SizedBox(
                            width: 220.w,
                            child: Text('AMOUNT',
                                style: CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600))),
                        SizedBox(
                            child: Text('STATUS',
                                style: CustomTextStyle.ksubTitleTextStyle
                                    .copyWith(fontWeight: FontWeight.w600)))
                      ]),
                    ),
                    SizedBox(
                      height: 480.h,
                      child: ListView.separated(
                        itemCount: userTransactionsList.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20.h,
                          );
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return TransactionsWidget(
                            transactions: userTransactionsList[index],
                            currentIndex: index,
                          );
                        },
                      ),
                    )
                  ]),
                ),
              )
            ]),
          ),
        ),
        // bottom center container
        Padding(
          padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
          child: SizedBox(
            width: 1214.w,
            child: Row(
              children: [
                Container(
                  width: 450.33.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.r),
                    color: CustomColors.kLightWhite,
                    border: Border.all(
                      color: CustomColors.kgreyColor,
                      width: 1.0.w,
                    ),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 16.h, left: 25.w, right: 24.w, bottom: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Customer',
                            style: CustomTextStyle.kTextHeading.copyWith(
                                fontWeight: FontWeight.bold,
                                color: CustomColors.kBlackIconColor,
                                fontSize: 20.sp),
                          ),
                          Text(
                            'View All',
                            style: CustomTextStyle.kTextHeading.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 14.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 650.h,
                      child: ListView.separated(
                        itemCount: listOfTopCustomer.length,
                        itemBuilder: (BuildContext context, int index) {
                          return TopCustomerWidget(
                            topCustomers: listOfTopCustomer[index],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 20.w, right: 20.w),
                                child: Divider(
                                  height: 1.h,
                                  color: CustomColors.kDividerColor,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      color: CustomColors.kLightWhite,
                      border: Border.all(
                        color: CustomColors.kgreyColor,
                        width: 1.0.w,
                      ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 24.h, left: 12.w, right: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Store',
                              style: CustomTextStyle.kTextHeading.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.kBlackIconColor,
                                  fontSize: 20.sp),
                            ),
                            Text(
                              'View All',
                              style: CustomTextStyle.kTextHeading.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 14.sp),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 650.h,
                        child: ListView.separated(
                          itemCount: listOfTopStore.length,
                          itemBuilder: (BuildContext context, int index) {
                            return TopStoreWidget(
                              topStores: listOfTopStore[index],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.w, right: 20.w),
                                  child: Divider(
                                    height: 1.h,
                                    color: CustomColors.kDividerColor,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
        // fotter container

        const FooterWidget(),
      ]),
    );
  }
}
