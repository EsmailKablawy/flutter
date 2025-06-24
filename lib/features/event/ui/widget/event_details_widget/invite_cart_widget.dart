import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/text_utils.dart';

class InviteCartWidget extends StatelessWidget {
  const InviteCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.w),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: blackclr.withOpacity(0.2),
          blurRadius: 5,
          spreadRadius: 3,
          offset: const Offset(1, -1),
        ),
      ], borderRadius: BorderRadius.circular(30), color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.w),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Group.png',
            width: 80.w,
          ),
          horizontalSpace(10),
          const Expanded(
            child: TextUtils(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                text: '+20 شخص مهتم '),
          ),
          //
          InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.w),
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(12)),
              child: Expanded(
                child: TextUtils(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    text: 'دعوة'.tr()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
