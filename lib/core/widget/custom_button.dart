import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.color,
    this.isReady = true,
  });

  final String text;
  final Function()? onTap;
  final Color? color;
  final bool isReady;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: width * 0.1,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: width * 0.15,
          decoration: BoxDecoration(
            color: isReady ? kPrimaryColor.withOpacity(0.8) : color,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              text,
              style: Styles.medium16.copyWith(
                color: isReady ? Colors.white : kTextGrey.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
