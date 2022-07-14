import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spryntr/Utils/images_path.dart';

import '../Utils/colors.dart';
import '../Utils/typography.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, top: 20.h, right: 50.w),
      child: Container(
        width: 1218.w,
        height: 120.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
          color: CustomColors.kLightWhite,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 48.h, bottom: 48.h, left: 32.w, right: 610.w),
              child: Text(
                '© 2021 Spryntr, LLC. All rights reserved.',
                style: CustomTextStyle.kFooterTextStyle,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SvgPicture.asset(CustomAssets.kFacebook),
              SizedBox(
                width: 24.w,
              ),
              SvgPicture.asset(CustomAssets.kTiwtter),
              SizedBox(
                width: 24.w,
              ),
              SvgPicture.asset(CustomAssets.kGithub),
            ]),
          ],
        ),
      ),
    );
  }
}
