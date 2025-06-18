import 'package:flutter/material.dart';

import 'text_utils.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });

  final String text;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.01),
      child: Container(
        width: width * 0.28,
        height: width * 0.09,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: TextUtils(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: textColor,
              text: text),
        ),
      ),
    );
  }
}
