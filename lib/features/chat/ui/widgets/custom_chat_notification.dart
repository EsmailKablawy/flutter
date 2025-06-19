import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widget/text_utils.dart';

class CustomNotificationButton extends StatelessWidget {
  const CustomNotificationButton({
    super.key,
    required this.text,
    this.onTap,
    this.color,
    this.isAccept = true,
  });

  final String text;
  final Function()? onTap;
  final Color? color;
  final bool isAccept;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.displayWidth * 0.06,
      width: context.displayWidth * 0.06,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            text: text),
      ),
    );
  }
}
