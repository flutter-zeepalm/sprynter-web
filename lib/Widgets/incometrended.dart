// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/incomeestimatetrend.dart';
import '../Utils/typography.dart';

class IncomeEstimatetrendWidget extends StatelessWidget {
  IncomeEstimatetrend incomeEstimatetrend;
  IncomeEstimatetrendWidget({Key? key, required this.incomeEstimatetrend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 32.h,
            bottom: 6.h,
          ),
          child: Text(
            incomeEstimatetrend.title,
            style: CustomTextStyle.kIncomeLifeSideCardTitleTextStyle,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 10.h,
          ),
          child: Text(
            incomeEstimatetrend.value,
            style: CustomTextStyle.kIncomeLifeSideCardSubTitleTextStyle,
          ),
        ),
      ],
    );
  }
}
