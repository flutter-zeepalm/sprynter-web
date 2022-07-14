// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/topcustomers.dart';
import '../Utils/colors.dart';
import '../Utils/typography.dart';

class TopCustomerWidget extends StatelessWidget {
  TopCustomers topCustomers;
  TopCustomerWidget({
    Key? key,
    required this.topCustomers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(topCustomers.profileImge),
      ),
      title: Text(topCustomers.name,
          style: CustomTextStyle.kTextHeading.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: CustomColors.kBlackIconColor)),
      subtitle: Text(
        topCustomers.email,
        style: CustomTextStyle.ksubTitleTextStyle,
      ),
      trailing: Text(
        topCustomers.money,
        style: CustomTextStyle.kTextHeading.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: CustomColors.kBlackIconColor),
      ),
    );
  }
}
