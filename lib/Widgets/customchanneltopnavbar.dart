import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Utils/colors.dart';
import '../Utils/icondata.dart';
import '../Utils/images_path.dart';

class CoustomTopNavBarWidget extends StatelessWidget {
  const CoustomTopNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.kNavBarColor,
        width: 1500.w,
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 500.w,
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 17.h, left: 20.w, bottom: 17.h),
                    child: SvgPicture.asset(CustomAssets.kSpryntrlogo),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 12.h, bottom: 12.h, left: 32.w),
                    child: Container(
                      width: 402.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
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
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 18.h, bottom: 18.h),
                  child: Icon(
                    CustomIconData.kNotificationsOutlinedIcon,
                    size: 20.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 18.h, right: 19.w, left: 12.w, bottom: 18.h),
                  child: Image.asset(CustomAssets.kAvatar),
                )
              ],
            )
          ],
        ));
  }
}
