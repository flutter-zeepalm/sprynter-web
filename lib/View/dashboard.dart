import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spryntr/Utils/colors.dart';

import '../Models/dashboardcard.dart';
import '../Models/dashboardtransactionstable.dart';
import '../Models/incomeestimatetrend.dart';
import '../Models/topcustomers.dart';
import '../Models/topstores.dart';
import '../Utils/images_path.dart';
import '../Utils/typography.dart';
import '../Widgets/customcard.dart';
import '../Widgets/customdropdownbutton.dart';
import '../Widgets/customfooterwidget.dart';
import '../Widgets/customgraph.dart';
import '../Widgets/customrightsidecontainer.dart';
import '../Widgets/customleftsidebar.dart';
import '../Widgets/customtopcustomer.dart';
import '../Widgets/customtostore.dart';
import '../Widgets/customtransactiontable.dart';
import '../Widgets/incometrended.dart';
import 'channelscustomer.dart';
import 'channelsdelivery.dart';
import 'channelstore.dart';

class AdminOverView extends StatefulWidget {
  const AdminOverView({Key? key}) : super(key: key);

  @override
  State<AdminOverView> createState() => _AdminOverViewState();
}

class _AdminOverViewState extends State<AdminOverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(50, 50),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return Row(children: [
                  Container(
                      color: CustomColors.kNavBarColor,
                      width: 1500.w,
                      height: 70.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.h, left: 29.w, bottom: 20.h),
                            child: SvgPicture.asset(CustomAssets.kSpryntrlogo),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 18.h, bottom: 18.h),
                                child: SvgPicture.asset(
                                    CustomAssets.kNotificationIcon),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 18.h,
                                    right: 19.w,
                                    left: 12.w,
                                    bottom: 18.h),
                                child: Image.asset(CustomAssets.kAvatar),
                              )
                            ],
                          )
                        ],
                      ))
                ]);
              } else {
                return Container(
                  color: CustomColors.kNavBarColor,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    centerTitle: true,
                    // leading: SvgPicture.asset(CustomAssets.kSpryntrlogo),
                    title: const Text('Mobile View'),
                    actions: [
                      SvgPicture.asset(CustomAssets.kNotificationIcon),
                      Image.asset(CustomAssets.kAvatar)
                    ],
                  ),
                );
              }
            },
          )),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 250.w),
                    child: Divider(
                      height: 1.h,
                      color: CustomColors.kDividerColor,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          width: 250.w,
                          height: 1811.h,
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                            width: 1.w,
                            color: CustomColors.kDividerColor,
                          ))),
                          child: const CustomLeftSideNavBar()),
                      SizedBox(
                          width: 1218.w,
                          height: 1717.h,
                          child: const CustomRightSideWidget())
                    ],
                  ),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                // top cards
                Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 25.w),
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
                          width: 126.w,
                        );
                      },
                    ),
                  ),
                ),
                // center income container
                Padding(
                  padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
                  child: Container(
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
                        height: Get.height,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.w, top: 43.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Income Estimate trend',
                                        style: CustomTextStyle.kCardTextHeading
                                            .copyWith(
                                                color: CustomColors
                                                    .kBlackIconColor,
                                                fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        'as of 25 May 2021, 09:41 PM',
                                        style:
                                            CustomTextStyle.kIncomeSubTextStyle,
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              const Expanded(child: GraphBar()),
                            ]),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: SizedBox(
                            height: Get.height,
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return IncomeEstimatetrendWidget(
                                  incomeEstimatetrend: incomeList[index],
                                );
                              },
                              separatorBuilder: (contex, int index) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: 50.h,
                                    ),
                                    Divider(
                                      height: 1,
                                      color: CustomColors.kgreyColor,
                                    ),
                                  ],
                                );
                              },
                              itemCount: incomeList.length,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                // center Transactions
                Padding(
                  padding: EdgeInsets.only(top: 16.h, right: 50.w, left: 25.w),
                  child: Container(
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
                          Padding(
                            padding: EdgeInsets.only(top: 16.h, left: 20.w),
                            child: SizedBox(
                              width: 402.w,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Transactions',
                                      style: CustomTextStyle
                                          .kTransactionsTextHeading
                                          .copyWith(fontSize: 20.sp),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Text(
                                        'This is a list of latest transactions.',
                                        style: CustomTextStyle
                                            .kTransactionsAndDateTimeTextStyle
                                            .copyWith(
                                          color:
                                              CustomColors.kSamiDarkGreyColor,
                                        ))
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 24.h, left: 161.w, right: 24.w),
                            child: Container(
                              width: 402.w,
                              height: 50.h,
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
                          SizedBox(
                            width: 400.w,
                            child: const CustomDropDownButton(),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
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
                                          .copyWith(
                                              fontWeight: FontWeight.w600),
                                    )),
                                SizedBox(
                                    width: 340.w,
                                    child: Text('DATE',
                                        style: CustomTextStyle
                                            .ksubTitleTextStyle
                                            .copyWith(
                                                fontWeight: FontWeight.w600))),
                                SizedBox(
                                    width: 220.w,
                                    child: Text('AMOUNT',
                                        style: CustomTextStyle
                                            .ksubTitleTextStyle
                                            .copyWith(
                                                fontWeight: FontWeight.w600))),
                                SizedBox(
                                    child: Text('STATUS',
                                        style: CustomTextStyle
                                            .ksubTitleTextStyle
                                            .copyWith(
                                                fontWeight: FontWeight.w600)))
                              ]),
                            ),
                            SizedBox(
                              height: 480.h,
                              child: ListView.separated(
                                itemCount: userTransactionsList.length,
                                separatorBuilder:
                                    (BuildContext context, int index) {
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
                                  top: 16.h,
                                  left: 25.w,
                                  right: 24.w,
                                  bottom: 16.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Top Customer',
                                    style: CustomTextStyle.kTextHeading
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.kBlackIconColor,
                                            fontSize: 20.sp),
                                  ),
                                  Text(
                                    'View All',
                                    style: CustomTextStyle.kTextHeading
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.sp),
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
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.w, right: 20.w),
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
                                padding: EdgeInsets.only(
                                    top: 24.h, left: 12.w, right: 10.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Top Store',
                                      style: CustomTextStyle.kTextHeading
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  CustomColors.kBlackIconColor,
                                              fontSize: 20.sp),
                                    ),
                                    Text(
                                      'View All',
                                      style: CustomTextStyle.kTextHeading
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 650.h,
                                child: ListView.separated(
                                  itemCount: listOfTopStore.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return TopStoreWidget(
                                      topStores: listOfTopStore[index],
                                    );
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.w, right: 20.w),
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
        },
      ),
      drawer: PreferredSize(
        preferredSize: Size(50.w, 50.h),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Row(
                children: [
                  Container(
                      width: 250.w,
                      height: 1811.h,
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                        width: 1.w,
                        color: CustomColors.kDividerColor,
                      ))),
                      child: const CustomLeftSideNavBar()),
                  SizedBox(
                      width: 1218.w,
                      height: 1717.h,
                      child: const CustomRightSideWidget())
                ],
              );
            }
            return Drawer(
              child: ListView(padding: EdgeInsets.zero, children: [
                DrawerHeader(
                    child: Padding(
                  padding: EdgeInsets.only(left: 40.w, right: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(CustomAssets.kPieChartIcon),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text('Overview',
                          style: CustomTextStyle.kTextHeading.copyWith(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            width: 1.2.w, color: CustomColors.kDividerColor)),
                    child: ExpansionTile(
                      collapsedIconColor: CustomColors.kBlackIconColor,
                      collapsedTextColor: CustomColors.kbrownIconColor,
                      textColor: CustomColors.kbrownIconColor,
                      leading: SvgPicture.asset(CustomAssets.kTableLayoutIcon),
                      title: Text('Channel',
                          style: CustomTextStyle.kExpansionTextHeading.copyWith(
                            fontSize: 35.sp,
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
                                      fontSize: 30.sp,
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
                                      fontSize: 30.sp,
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
                                style: CustomTextStyle.kExpansionTextHeading
                                    .copyWith(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.kBlackIconColor,
                                ),
                              ),
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
                      leading: SvgPicture.asset(CustomAssets.kProfileuserIcon),
                      title: Text('User',
                          style: CustomTextStyle.kExpansionTextHeading.copyWith(
                            fontSize: 35.sp,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.kBlackIconColor,
                          )),
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Add Admin',
                                style: CustomTextStyle.kExpansionTextHeading
                                    .copyWith(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.kBlackIconColor,
                                )),
                            SizedBox(
                              height: 25.h,
                            ),
                            Text('Administrators',
                                style: CustomTextStyle.kExpansionTextHeading
                                    .copyWith(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.kBlackIconColor,
                                )),
                            SizedBox(
                              height: 40.h,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
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
                      width: 35.w,
                    ),
                    Text('Docs',
                        style: CustomTextStyle.kExpansionTextHeading.copyWith(
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.kBlackIconColor,
                        ))
                  ]),
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}
