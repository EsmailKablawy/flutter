import 'package:event/core/widget/center_text_utils.dart' show CenterTextUtils;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../thems/thems.dart';

class ButtonUtils extends StatelessWidget {
  final Color colorstext;
  final Color background;
  final String text;
  final Function() onPressed;
  final String? sameBorder;
  const ButtonUtils(
      {required this.text,
      required this.onPressed,
      super.key,
      required this.colorstext,
      required this.background,
      this.sameBorder});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: Size(300.w, 45.w),
              backgroundColor: background,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: sameBorder == null
                          ? background == greyClr
                              ? greyClr
                              : mainColor
                          : background),
                  borderRadius: BorderRadius.circular(14))),
          onPressed: onPressed,
          child: CenterTextUtils(
              fontSize: 16,
              fontWeight:
                  colorstext == mainColor ? FontWeight.w500 : FontWeight.w700,
              color: background == greyClr ? dark : colorstext,
              text: text)),
    );
  }
}
