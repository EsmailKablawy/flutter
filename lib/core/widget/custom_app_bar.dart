import 'package:flutter/material.dart';

import '../thems/thems.dart';
import 'custom_icon_button.dart';
import 'text_utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.onLeftTap,
    this.hasText = true,
    this.text,
    required this.onRightTap,
    this.icon,
  });

  final Function()? onLeftTap;
  final Function() onRightTap;
  final String? text;
  final Widget? icon;
  final bool hasText;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: width * 0.14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 24),
            onTap: onRightTap,
          ),
          hasText == true
              ? TextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: blackcolor,
                  text: text ?? '')
              : const SizedBox(),
          icon != null
              ? CustomIconButton(icon: icon, onTap: onRightTap)
              : SizedBox(width: width * 0.1),
        ],
      ),
    );
  }
}
