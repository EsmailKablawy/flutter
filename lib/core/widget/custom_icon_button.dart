import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, this.icon, this.onTap});

  final Widget? icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: kIconButton,
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.042),
          child: Center(child: icon),
        ),
      ),
    );
  }
}
