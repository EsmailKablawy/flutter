import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../thems/thems.dart';

PreferredSizeWidget mainAppBar(
    {required BuildContext context, required String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: whiteclr,
    actions: [
      Container(
          padding: EdgeInsets.all(12.w),
          decoration:
              const BoxDecoration(color: offWhiteClr, shape: BoxShape.circle),
          child: AnimatedSvgIcon(
              iconPath: title == ''
                  ? 'assets/svgs/setting.svg'
                  : 'assets/svgs/searchIcon.svg')

          //  SvgPicture.asset('assets/svgs/searchIcon.svg'),
          ),
      horizontalSpace(15.w),
    ],
    title: CenterTextUtils(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        text: title),
  );
}
