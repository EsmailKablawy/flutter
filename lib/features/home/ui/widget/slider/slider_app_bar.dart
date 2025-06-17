import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';

class SliderAppBar extends StatelessWidget {
  const SliderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 30.w,
          padding: REdgeInsets.symmetric(
            horizontal: 8.w,
          ),
          decoration: BoxDecoration(
              color: whiteclr.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/timer.svg'),
              horizontalSpace(4),
              TextUtils(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  text: 'الان'.tr()),
              horizontalSpace(3),
              SvgPicture.asset('assets/svgs/drop_down.svg'),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              height: 30.w,
              width: 90.w,
              padding: REdgeInsets.symmetric(horizontal: 6, vertical: 3.w),
              decoration: BoxDecoration(
                  color: whiteclr.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextUtils(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        text: 'التوصيل الي\nالرياض شارع الس....'.tr()),
                  ),
                  horizontalSpace(3),
                  SvgPicture.asset('assets/svgs/drop_down.svg'),
                ],
              ),
            ),
            horizontalSpace(10),
            Container(
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                  color: whiteclr.withOpacity(0.2), shape: BoxShape.circle),
              child: SvgPicture.asset(
                'assets/svgs/search_icon.svg',
                width: 17.w,
              ),
            )
          ],
        )
      ],
    );
  }
}
