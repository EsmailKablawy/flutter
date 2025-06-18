import 'package:flutter/material.dart';

import '../../../../core/widget/text_utils.dart';

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton(
      {super.key, this.onTap, this.icon, required this.text});

  final String text;
  final Widget? icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.1,
        vertical: width * 0.07,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon ?? const SizedBox(),

                TextUtils(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                    text: text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
