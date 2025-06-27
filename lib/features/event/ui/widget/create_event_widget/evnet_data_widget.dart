import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widget/button_utils.dart';

class EvnetDataWidget extends StatefulWidget {
  const EvnetDataWidget({super.key});

  @override
  State<EvnetDataWidget> createState() => _EvnetDataWidgetState();
}

class _EvnetDataWidgetState extends State<EvnetDataWidget> {
  DateTime dateTime = DateTime.now();
  DateTime time = DateTime.now();
  String selectDate = '';
  String selectTime = '';
  chooseDate(
    BuildContext contexxt,
  ) {
    return showModalBottomSheet(
      context: contexxt,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
            width: context.displayWidth / 1,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    width: 100,
                    decoration: BoxDecoration(
                        color: greyClr, borderRadius: BorderRadius.circular(8)),
                  ),
                  verticalSpace(15),
                  TextUtils(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      text: 'حدد تاريخ المناسبة'.tr()),
                  verticalSpace(20),
                  SizedBox(
                    height: 150, // Fixed height for the date picker
                    child: CupertinoDatePicker(
                      backgroundColor: Colors.white,
                      initialDateTime: DateTime.now(),
                      minimumDate: DateTime(
                        DateTime.now().year,
                        DateTime.now().month,
                        DateTime.now().day - 1,
                      ),
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() {
                          dateTime = newTime;
                        });
                      },
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.date,
                    ),
                  ),
                  verticalSpace(24.h),
                  Row(
                    children: [
                      Expanded(
                        child: ButtonUtils(
                            text: 'الغاء'.tr(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            colorstext: mainColor,
                            background: whiteclr),
                      ),
                      horizontalSpace(10),
                      Expanded(
                        child: ButtonUtils(
                            text: 'تحديد الوقت'.tr(),
                            onPressed: () {
                              setState(() {
                                selectDate =
                                    '${dateTime.year}-${dateTime.month}-${dateTime.day}';
                              });
                              Navigator.pop(context);
                              chooseTime(contexxt);
                            },
                            colorstext: Colors.white,
                            background: mainColor),
                      )
                    ],
                  ),
                  verticalSpace(20)
                ],
              ),
            ));
      },
    );
  }

  chooseTime(
    BuildContext contexxt,
  ) {
    return showModalBottomSheet(
      context: contexxt,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
            width: context.displayWidth / 1,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 3,
                    width: 100,
                    decoration: BoxDecoration(
                        color: greyClr, borderRadius: BorderRadius.circular(8)),
                  ),
                  verticalSpace(15),
                  TextUtils(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      text: 'حدد وقت المناسبة'.tr()),
                  verticalSpace(20),
                  SizedBox(
                    height: 150, // Fixed height for the date picker
                    child: CupertinoDatePicker(
                      backgroundColor: Colors.white,
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (DateTime newTime) {
                        setState(() {
                          time = newTime;
                        });
                      },
                      use24hFormat: true,
                      mode: CupertinoDatePickerMode.time,
                    ),
                  ),
                  verticalSpace(24.h),
                  Row(
                    children: [
                      Expanded(
                        child: ButtonUtils(
                            text: 'الغاء'.tr(),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            colorstext: mainColor,
                            background: whiteclr),
                      ),
                      horizontalSpace(10),
                      Expanded(
                        child: ButtonUtils(
                            text: 'تأكيد'.tr(),
                            onPressed: () {
                              setState(() {
                                selectTime = '${time.hour} : ${time.minute}';
                              });
                              Navigator.pop(context);
                            },
                            colorstext: Colors.white,
                            background: mainColor),
                      )
                    ],
                  ),
                  verticalSpace(20)
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: blackclr,
            text: 'الوقت والتاريخ'.tr()),
        verticalSpace(10),
        InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () {
            chooseDate(context);
          },
          child: Container(
            padding: EdgeInsets.only(
                right: 10.w, left: 10.w, top: 10.w, bottom: 10.w),
            decoration: BoxDecoration(
                border: Border.all(
                  color: mainColor.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(24)),
            child: Row(
              children: [
                AnimatedSvgIcon(iconPath: 'assets/svgs/celender.svg'),
                horizontalSpace(5),
                Expanded(
                    child: TextUtils(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: selectDate.isEmpty ? greyClr : blackclr,
                        text: selectDate.isEmpty
                            ? 'مثل يوم 8/3/2027 الساعة 10 مساءا'.tr()
                            : '${'مثل يوم'.tr()}  $selectDate ${'الساعة'.tr()}  $selectTime'))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
