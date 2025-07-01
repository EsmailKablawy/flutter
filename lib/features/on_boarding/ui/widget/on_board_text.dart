import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const OnBoardText(
      {super.key,
      required this.fontSize,
      required this.fontWeight,
      required this.color,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: -0.30,
        ));
  }
}
