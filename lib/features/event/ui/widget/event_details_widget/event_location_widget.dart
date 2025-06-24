import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/spacing.dart';

class EventLocationWidget extends StatelessWidget {
  const EventLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //date

        dataInput(
          icon: 'assets/svgs/celender.svg',
          title: '14 ديسمبر , 2025'.tr(),
          desc: 'الثلاثاء , 4:00 مساءا الي 9:00 مساءا'.tr(),
        ),
        verticalSpace(15),
        //location
        dataInput(
          icon: 'assets/svgs/advancedLocation.svg',
          title: 'مركز جالا للمؤتمرات',
          desc: '36 شارع جيلد، لندن، المملكة المتحدة',
        ),
      ],
    );
  }

  Widget dataInput(
      {required String icon, required String title, required String desc}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //
        Container(
            padding: EdgeInsets.all(4.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: mainColor.withOpacity(0.2)),
            child: SvgPicture.asset(
              icon,
              width: 30.w,
            )),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextUtils(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  text: title),
              TextUtils(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  text: desc),
            ],
          ),
        )
      ],
    );
  }
}
