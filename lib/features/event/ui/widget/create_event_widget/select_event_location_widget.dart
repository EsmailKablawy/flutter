import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/animated_svg_icon.dart';
import '../../../../../core/widget/text_utils.dart';

class SelectEventLocationWidget extends StatelessWidget {
  const SelectEventLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: blackclr,
            text: 'الموقع'.tr()),
        verticalSpace(10),
        InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
                right: 10.w, left: 10.w, top: 14.w, bottom: 14.w),
            decoration: BoxDecoration(
                border: Border.all(
                  color: mainColor.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(24)),
            child: Row(
              children: [
                AnimatedSvgIcon(
                  iconPath: 'assets/svgs/select_event_location.svg',
                ),
                horizontalSpace(5),
                Expanded(
                    child: TextUtils(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: greyClr,
                        text: 'تحديد موقع المناسبة علي الخريطة'.tr()))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
