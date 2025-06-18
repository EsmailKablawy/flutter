import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyServiceWidget extends StatelessWidget {
  const MyServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextUtils(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: redClr,
                  text: 'خدماتنا'.tr()),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Row(
                children: [
                  TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: blackclr,
                      text: 'رؤية الكل'.tr()),
                  horizontalSpace(5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12.w,
                  )
                ],
              ),
            )
          ],
        ),
        verticalSpace(10),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          padding: const EdgeInsets.all(0),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 10.w,
              mainAxisExtent: 144.w),
          itemBuilder: (context, index) {
            return AnimateBuilder(
              columnCount: 3,
              position: index,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                    color: primaryClr, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    //
                    Container(
                      width: 90.w,
                      height: 90.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/8cc441e71155d10dca1ca8c67be752b92e9ed2b6.jpg'))),
                    ),
                    verticalSpace(5),
                    Expanded(
                      child: CenterTextUtils(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackcolor,
                          text: 'العروض الترفيهية'.tr()),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
