import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:spryntr/Models/dashboardcard.dart';
import 'package:spryntr/Utils/colors.dart';
import 'package:spryntr/Widgets/customchannelcustomer.dart';

import '../Models/channelcard.dart';
import '../Utils/images_path.dart';
import '../Widgets/customchannelcontainer.dart';
import '../Widgets/customchanneltopnavbar.dart';
import '../Widgets/customfooterwidget.dart';
import '../Widgets/customleftsidebar.dart';

class ChannelStoreList extends StatefulWidget {
  const ChannelStoreList({Key? key}) : super(key: key);

  @override
  State<ChannelStoreList> createState() => _ChannelStoreListState();
}

class _ChannelStoreListState extends State<ChannelStoreList> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: const [
              CoustomTopNavBarWidget(),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 250.w),
              child: Divider(
                height: 2.h,
                color: CustomColors.kDividerColor,
              ),
            ),
            Row(
              children: [
                Container(
                    width: 250.w,
                    height: 913.h,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                      width: 1.w,
                      color: CustomColors.kDividerColor,
                    ))),
                    child: const CustomLeftSideNavBar()),
                SizedBox(
                    width: 1218.w,
                    height: 913.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 16.h, right: 30.w, left: 25.w),
                            child: SizedBox(
                              height: 200.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return CustomChannelCardsWidget(
                                    channelCard: listOfCard[index],
                                    currentIndex: index,
                                  );
                                },
                                itemCount: listOfCards.length,
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(
                                    width: 30.w,
                                  );
                                },
                              ),
                            ),
                          ),
                          CustomChannelContainerWidget(
                              title: 'Stores List',
                              subTitle: 'This is a list of Stores'),
                          const FooterWidget(),
                        ],
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
