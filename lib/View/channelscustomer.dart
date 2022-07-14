import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:spryntr/Models/channelcard.dart';
import 'package:spryntr/Utils/colors.dart';

import '../Widgets/customchannelcontainer.dart';
import '../Widgets/customchannelcustomer.dart';
import '../Widgets/customchanneltopnavbar.dart';
import '../Widgets/customfooterwidget.dart';
import '../Widgets/customleftsidebar.dart';

class ChannelCustomer extends StatefulWidget {
  const ChannelCustomer({Key? key}) : super(key: key);

  @override
  State<ChannelCustomer> createState() => _ChannelCustomerState();
}

class _ChannelCustomerState extends State<ChannelCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                              itemCount: listOfCard.length,
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
                            title: 'Customers List',
                            subTitle: 'This is a list of Users'),
                        const FooterWidget(),
                      ],
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
