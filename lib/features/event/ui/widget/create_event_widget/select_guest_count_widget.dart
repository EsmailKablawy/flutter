import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/text_utils.dart';

class SelectGuestCountWidget extends StatefulWidget {
  const SelectGuestCountWidget({super.key});

  @override
  State<SelectGuestCountWidget> createState() => _SelectGuestCountWidgetState();
}

class _SelectGuestCountWidgetState extends State<SelectGuestCountWidget> {
  List guestCount = ['1', '2', '3', '4', 'اكثر'.tr()];
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
            text: 'عدد الضيوف'.tr()),
        verticalSpace(10),
        SizedBox(
          height: 52.w,
          width: context.displayWidth / 1,
          child: ListView.builder(
            itemCount: guestCount.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  InkWell(
                    overlayColor: WidgetStatePropertyAll(
                      mainColor.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      setState(() {
                        currentCount = guestCount[index];
                      });
                    },
                    child: Container(
                      width: 45.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              width: currentCount == guestCount[index]
                                  ? 2.w
                                  : 1.5.w,
                              color: currentCount == guestCount[index]
                                  ? mainColor
                                  : greyClr.withOpacity(0.6))),
                      child: Center(
                        child: currentCount == guestCount[index]
                            ? AnimateBuilder(
                                columnCount: 1,
                                position: 0,
                                child: CenterTextUtils(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: currentCount == guestCount[index]
                                        ? mainColor
                                        : Colors.black,
                                    text: guestCount[index]),
                              )
                            : CenterTextUtils(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: currentCount == guestCount[index]
                                    ? mainColor
                                    : Colors.black,
                                text: guestCount[index]),
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
