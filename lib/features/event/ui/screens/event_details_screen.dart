import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/button_utils.dart';
import 'package:event/core/widget/padding_nav_bar.dart';
import 'package:event/core/widget/padding_utils.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:event/features/event/ui/widget/event_details_widget/event_details_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/event_details_widget/event_location_widget.dart';
import '../widget/event_details_widget/event_owner_widget.dart';
import '../widget/event_details_widget/invite_cart_widget.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: greyClr.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 3,
            offset: const Offset(1, -1),
          ),
        ]),
        padding: paddingNavBar(),
        child: Row(
          children: [
            Expanded(
              child: ButtonUtils(
                  text: 'قبول'.tr(),
                  onPressed: () {},
                  colorstext: Colors.white,
                  background: mainColor),
            ),
            horizontalSpace(20),
            Expanded(
              child: ButtonUtils(
                  text: 'رفض'.tr(),
                  onPressed: () {},
                  colorstext: mainColor,
                  background: Colors.white),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: context.displayWidth / 1,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //back_ground_image
                  SizedBox(
                    height: 300.w,
                    width: context.displayWidth / 1,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/image 78.png',
                            width: context.displayWidth / 1,
                            height: 265.w,
                            fit: BoxFit.cover),
                        //invite_cart
                        PositionedDirectional(
                            bottom: 0.w,
                            start: 0.w,
                            end: 0.w,
                            child: const InviteCartWidget())
                      ],
                    ),
                  ),
                  Container(
                    padding: paddingUtils(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        TextUtils(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            text: 'حفلة عيد ميلاد “ عيد ميلاد نادين”'.tr()),
                        verticalSpace(20),
                        const EventLocationWidget(),
                        verticalSpace(20),
                        //event owner
                        const EventOwnerWidget(),
                        verticalSpace(20),
                        //event_details_data
                        TextUtils(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            text: 'تفاصيل اضافية للمناسبة'.tr()),
                        verticalSpace(10),
                        TextUtils(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: blackclr,
                            text:
                                'تورتة زفاف مميزة ومكونة من ثلاث طبقات، مصممة خصيصًا لتتناسب مع أجواء حفل الزفاف الفاخر. مزينة بأزهار طبيعية وألوان ناعمة تعكس الذوق الراقي. تضمن لك هذه التورتة لحظات لا تُنسى   تورتة زفاف مميزة ومكونة من ثلاث طبقات، مصممة خصيصًا لتتناسب مع أجواء حفل الزفاف الفاخر. مزينة بأزهار طبيعية وألوان ناعمة تعكس الذوق الراقي. تضمن لك هذه التورتة لحظات لا تُنسى قراءة المزيد'
                                    .tr()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //appBar
          PositionedDirectional(
              top: 0, start: 20.w, end: 20.w, child: const EventDetailsAppBar())
        ],
      ),
    );
  }
}
