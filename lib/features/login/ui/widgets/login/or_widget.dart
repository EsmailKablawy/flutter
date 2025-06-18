import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/text_utils.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 1,
          color: greyClr,
        )),
        horizontalSpace(7),
        TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: blackclr,
            text: 'أو'.tr()),
        horizontalSpace(7),
        Expanded(
            child: Container(
          height: 1,
          color: greyClr,
        ))
      ],
    );
  }
}
