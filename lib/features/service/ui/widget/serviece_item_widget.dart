import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/anmiate_builder.dart';
import '../../../../core/widget/center_text_utils.dart';

class ServieceItemWidget extends StatelessWidget {
  const ServieceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // عدد الأعمدة
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.w,
            mainAxisExtent: 130.w),
        delegate: SliverChildBuilderDelegate(
          childCount: 30, // طول البيانات من API

          (context, index) {
            return AnimateBuilder(
              columnCount: 3,
              position: index,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    //
                    Expanded(
                      child: Container(
                        width: context.displayWidth / 1,
                        // height: 135.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/d8e48cd42ca3ca2cefc10ec1f73c7774932013ce.jpg'))),
                      ),
                    ),
                    verticalSpace(3),
                    CenterTextUtils(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: blackcolor,
                        text: 'ورود'.tr()),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
