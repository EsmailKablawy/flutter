import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventOwnerWidget extends StatelessWidget {
  const EventOwnerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.w),
          color: mainColor.withOpacity(0.2)),
      child: Row(
        children: [
          Container(
            width: 45.w,
            height: 45.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/WhatsApp Image 2025-06-11 at 14.11.24.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(10),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TextUtils(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  text: 'احمد'),
              verticalSpace(2),
              Row(
                children: [
                  SvgPicture.asset('assets/svgs/owner.svg'),
                  horizontalSpace(3),
                  const TextUtils(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: blackclr,
                      text: 'صاحب الحفلة'),
                ],
              ),
            ],
          )),
          //chat
          InkWell(
            borderRadius: BorderRadius.circular(50.w),
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(7.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(
                'assets/svgs/chat.svg',
                width: 16.w,
              ),
            ),
          ),
          horizontalSpace(10),
          //call
          InkWell(
            borderRadius: BorderRadius.circular(50.w),
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(7.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(
                'assets/svgs/Calliconi.svg',
                width: 16.w,
              ),
            ),
          )
        ],
      ),
    );
  }
}
