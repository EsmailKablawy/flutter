import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/spacing.dart';
import '../thems/thems.dart';
import 'center_text_utils.dart';
import 'padding_utils.dart';
import 'slide_enimation_widget.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen(
      {super.key, required this.icon, required this.title, required this.desc});
  final String icon;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingUtils(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //image
            SlideEnimationWidget(
                index: 0,
                child: SvgPicture.asset(
                  icon,
                  height: 280.w,
                  width: 280.w,
                )),
            verticalSpace(20),
            CenterTextUtils(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                text: title.tr()),
            verticalSpace(10),
            CenterTextUtils(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: blackclr,
                text: desc.tr())
          ],
        ),
      ),
    );
  }
}
