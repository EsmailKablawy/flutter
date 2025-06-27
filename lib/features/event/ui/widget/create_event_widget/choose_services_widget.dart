import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/text_utils.dart';

class ChooseServicesWidget extends StatefulWidget {
  const ChooseServicesWidget({super.key});

  @override
  State<ChooseServicesWidget> createState() => _ChooseServicesWidgetState();
}

class _ChooseServicesWidgetState extends State<ChooseServicesWidget> {
  List guestCount = [
    {'title': 'تصوير', 'icon': 'assets/images/fluent-color_camera-20.png'},
    {
      'title': 'عروض ترفيهية',
      'icon': 'assets/images/fluent-color_camera-20.png'
    },
    {
      'title': 'طعام ومشروبات',
      'icon': 'assets/images/fluent-color_camera-20.png'
    },
    {
      'title': 'العاب و مسابقات',
      'icon': 'assets/images/fluent-color_camera-20.png'
    },
    {'title': 'ديكورات', 'icon': 'assets/images/fluent-color_camera-20.png'},
  ];
  String currentCount = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: blackclr,
            text: 'اختر الخدمات  (سيتواصل معك موردين الخدمات )'.tr()),
        verticalSpace(10),
        GridView.builder(
          itemCount: guestCount.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5.w,
              mainAxisExtent: 77.w,
              crossAxisSpacing: 5.w),
          itemBuilder: (context, index) {
            return AnimateBuilder(
              columnCount: 3,
              position: index,
              child: InkWell(
                overlayColor: WidgetStatePropertyAll(
                  mainColor.withOpacity(0.1),
                ),
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  setState(() {
                    currentCount = guestCount[index]['title'];
                  });
                },
                child: Container(
                  width: 45.w,
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: currentCount == guestCount[index]['title']
                              ? 2.w
                              : 1.5.w,
                          color: currentCount == guestCount[index]['title']
                              ? mainColor
                              : greyClr.withOpacity(0.6))),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        verticalSpace(5),
                        Image.asset(
                          guestCount[index]['icon'],
                          width: 35.w,
                          height: 35.w,
                        ),
                        verticalSpace(5),
                        Expanded(
                          child: SizedBox(
                            child: currentCount == guestCount[index]['title']
                                ? AnimateBuilder(
                                    columnCount: 1,
                                    position: 0,
                                    child: CenterTextUtils(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: currentCount ==
                                                guestCount[index]['title']
                                            ? mainColor
                                            : Colors.black,
                                        text: guestCount[index]['title']),
                                  )
                                : CenterTextUtils(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: currentCount == guestCount[index]
                                        ? mainColor
                                        : Colors.black,
                                    text: guestCount[index]['title']),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
