// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:spryntr/Utils/colors.dart';

class CustomTextStyle {
  static TextStyle kTextHeading = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(16.sp),
    fontWeight: KMediumFontWeight,
    color: CustomColors.kTextHeadingColor,
  );
  static TextStyle kExpansionTextHeading = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(16.sp),
    fontWeight: KMediumFontWeight,
    color: CustomColors.kBlackIconColor,
  );
  static TextStyle kCardTextHeading = GoogleFonts.mulish(
    fontSize: ScreenUtil().setSp(19.sp),
    fontWeight: KBoldFont,
    color: CustomColors.kTextHeadingColor,
  );
  static TextStyle kCardSubTextStyle = GoogleFonts.mulish(
    fontSize: ScreenUtil().setSp(40.sp),
    fontWeight: KBoldFont,
    color: CustomColors.kTextHeadingColor,
  );
  static TextStyle kIncomeSubTextStyle = GoogleFonts.mulish(
    fontSize: ScreenUtil().setSp(12.sp),
    fontWeight: KNormalFont,
    color: CustomColors.kgreyColor,
  );
  static TextStyle kGraphTextStyle = GoogleFonts.inter(
    fontSize: ScreenUtil().setSp(10.sp),
    fontWeight: KBoldFont,
    color: CustomColors.kBlackIconColor,
  );
  static TextStyle kIncomeLifeSideCardTitleTextStyle = GoogleFonts.mulish(
    fontSize: ScreenUtil().setSp(16.sp),
    fontWeight: KSemiBold,
    color: CustomColors.klightGray,
  );
  static TextStyle kIncomeLifeSideCardSubTitleTextStyle = GoogleFonts.mulish(
    fontSize: ScreenUtil().setSp(24.sp),
    fontWeight: KBoldFont,
    color: CustomColors.kBlackIconColor,
  );
  static TextStyle kTransactionsTextHeading = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(20.sp),
    fontWeight: KSemiBold,
    color: CustomColors.kBlackIconColor,
  );
  static TextStyle kTransactionsTextStyle = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(12.sp),
    fontWeight: KRegular,
    color: CustomColors.kSamiDarkGreyColor,
  );
  static TextStyle kTransactionsAmountTextStyle = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(16.sp),
    fontWeight: KMediumFontWeight,
    color: CustomColors.kSamiDarkGreyColor,
  );
  static TextStyle kTransactionsAndDateTimeTextStyle = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(14.sp),
    fontWeight: KSemiBold,
    color: CustomColors.klightGery,
  );
  static TextStyle ksubTitleTextStyle = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(12.sp),
    fontWeight: KRegular,
    color: CustomColors.kSamiDarkGreyColor,
  );
  static TextStyle kFilterTextHeading = GoogleFonts.barlow(
    fontSize: ScreenUtil().setSp(14.sp),
    fontWeight: KMediumFontWeight,
    color: CustomColors.kBlackIconColor,
  );
  static TextStyle kFooterTextStyle = GoogleFonts.inter(
    fontSize: ScreenUtil().setSp(16.sp),
    fontWeight: KRegular,
    color: CustomColors.kSamiDarkGreyColor,
  );
}

FontWeight KBoldFont = FontWeight.bold;
FontWeight KNormalFont = FontWeight.normal;
FontWeight KFontWeight1 = FontWeight.w100;
FontWeight KFontWeight2 = FontWeight.w200;
FontWeight KFontWeight3 = FontWeight.w300;
FontWeight KRegular = FontWeight.w400;
FontWeight KMediumFontWeight = FontWeight.w500;
FontWeight KSemiBold = FontWeight.w600;
FontWeight KFontWeight7 = FontWeight.w700;
FontWeight KFontWeight8 = FontWeight.w800;
