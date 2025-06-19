import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class CustomIconButtonWithOpacity extends StatelessWidget {
  const CustomIconButtonWithOpacity({super.key, this.icon, this.onTap});

  final Widget? icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.displayWidth * 0.07,
        height: context.displayWidth * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: kIconButton.withOpacity(0.2),
        ),
        child: Center(child: icon),
      ),
    );
  }
}
