import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/text_from_field_utils_widget.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/animated_svg_icon.dart';

// ignore: must_be_immutable
class EventName extends StatelessWidget {
  EventName({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: blackclr,
            text: 'اسم المناسبة'.tr()),
        verticalSpace(10),
        TextFromFieldUtilsWidget(
            prefix: Padding(
              padding: EdgeInsets.all(12.w),
              child: AnimatedSvgIcon(iconPath: 'assets/svgs/event_name.svg'),
            ),
            controller: controller,
            obscureText: false,
            validator: (v) {
              return null;
            },
            textInputType: TextInputType.name,
            hintText: 'مثل :عيدميلاد اسماعيل'.tr(),
            textInputAction: TextInputAction.next),
      ],
    );
  }
}
