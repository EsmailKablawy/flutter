import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventsWidget extends StatelessWidget {
  const EventsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: blackcolor,
                  text: 'المناسبات'.tr()),
            ),
          ],
        ),
        verticalSpace(10),
        SizedBox(
          height: 120.w,
          width: context.displayWidth / 1,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return AnimateBuilder(
                columnCount: 3,
                position: index,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
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
                    horizontalSpace(12),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
