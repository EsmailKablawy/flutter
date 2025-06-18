// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../thems/thems.dart';

class TextFromFieldUtilsWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?) validator;
  final TextInputType textInputType;
  final Widget? suffix;
  final Widget? prefix;
  final String hintText;
  final TextInputAction textInputAction; // Add this parameter

  const TextFromFieldUtilsWidget({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.validator,
    required this.textInputType,
    required this.hintText,
    this.suffix,
    this.prefix,
    required this.textInputAction,
  });

  InputDecoration _inputDecoration() {
    return InputDecoration(
      fillColor: hintText == '*** ***' ? Colors.white : offWhiteClr,
      prefixIcon: (prefix is Text && (prefix as Text).data?.isEmpty == true)
          ? null
          : prefix,
      suffixIcon: suffix,
      hintText: hintText,
      hintStyle: GoogleFonts.cairo(
        color: greyClr,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.30,
      ),
      floatingLabelStyle: GoogleFonts.cairo(
        color: mainColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.30,
      ),
      filled: false,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(24)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: mainColor),
          borderRadius: BorderRadius.circular(24)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: redClr),
          borderRadius: BorderRadius.circular(24)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: mainColor.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(24)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.almarai(
        color: Colors.black,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.30,
      ),
      controller: controller,
      obscureText: obscureText,
      cursorColor: Colors.black,
      keyboardType: textInputType,
      validator: validator,
      textInputAction: textInputAction,
      decoration: _inputDecoration(),
    );
  }
}
