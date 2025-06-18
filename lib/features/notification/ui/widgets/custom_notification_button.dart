import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/utils/styles.dart';

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
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.02),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: width * 0.09,
          width: width * 0.275,
          decoration: BoxDecoration(
            color: isAccept ? kPrimaryColor.withOpacity(0.8) : null,
            border: isAccept ? null : Border.all(color: kTextGrey),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              text,
              style: Styles.medium16.copyWith(
                color: isAccept ? Colors.white : kTextGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
