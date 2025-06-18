import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const TextUtils(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Text(text,
          style: GoogleFonts.cairo(
              color: color,
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
              letterSpacing: -0.30,
              decoration: text == 'هنا'
                  ? TextDecoration.underline
                  : TextDecoration.none)),
    );
  }
}
