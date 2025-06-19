import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyOccasionsData extends StatelessWidget {
  const MyOccasionsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('assets/images/Group 33350.png'),
          ),
          horizontalSpace(10),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //data
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: TextUtils(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: mainColor,
                          text: 'الأربعاء، 28 أبريل • 5:30 مساءً'),
                    ),
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: const BoxDecoration(
                          color: offWhiteClr, shape: BoxShape.circle),
                      child: SvgPicture.asset('assets/svgs/delete.svg'),
                    ),
                    horizontalSpace(5),
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: const BoxDecoration(
                          color: offWhiteClr, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.done,
                        color: greenClr,
                        size: 18,
                      ),
                    )
                  ],
                ),
                verticalSpace(3),
                //desc
                const TextUtils(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    text: 'حفلة عيد ميلاد “ عيد ميلاد نادين “'),
                verticalSpace(3),
                Row(
                  children: [
                    SvgPicture.asset('assets/svgs/location.svg'),
                    horizontalSpace(5),
                    const Expanded(
                      child: TextUtils(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: blackclr,
                          text: 'معرض راديوس • سانتا كروز، كاليفورنيا'),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
