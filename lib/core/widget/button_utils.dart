import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../thems/thems.dart';
import 'text_utils.dart';

class ButtonUtils extends StatelessWidget {
  final Color colorstext;
  final Color background;
  final String text;
  final Function() onPressed;
  const ButtonUtils(
      {required this.text,
      required this.onPressed,
      super.key,
      required this.colorstext,
      required this.background});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: Size(300.w, 50.w),
              backgroundColor: background,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: background == greyClr
                          ? greyClr
                          : background == offWhiteClr
                              ? offWhiteClr
                              : background),
                  borderRadius: BorderRadius.circular(48))),
          onPressed: onPressed,
          child: TextUtils(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: colorstext,
              text: text)),
    );
  }
}
