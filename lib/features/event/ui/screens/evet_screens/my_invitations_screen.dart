import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:event/core/widget/slide_enimation_widget.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInvitationsScreen extends StatelessWidget {
  const MyInvitationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SlideEnimationWidget(
            index: 0,
            child: AnimatedSvgIcon(iconPath: 'assets/svgs/Group 33596.svg')),
        verticalSpace(20),
        CenterTextUtils(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: blackcolor,
            text: 'لم تتم دعوتك !'.tr()),
        verticalSpace(20),
        CenterTextUtils(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: blackclr,
            text:
                'لم تتم دعوتك الي مناسبة الا الان عند دعوتك سيصلك اشعار'.tr()),
      ],
    );
  }
}
