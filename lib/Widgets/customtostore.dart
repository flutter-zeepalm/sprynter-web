// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Models/topstores.dart';

import '../Utils/colors.dart';
import '../Utils/typography.dart';

class TopStoreWidget extends StatelessWidget {
  TopStores topStores;
  TopStoreWidget({
    Key? key,
    required this.topStores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(topStores.title,
          style: CustomTextStyle.kTextHeading.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: CustomColors.kBlackIconColor)),
      subtitle: Text(
        topStores.subTitle,
        style: CustomTextStyle.ksubTitleTextStyle,
      ),
      trailing: Text(
        topStores.sale,
        style: CustomTextStyle.kTextHeading.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: CustomColors.kBlackIconColor),
      ),
    );
  }
}
