// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/thems/thems.dart';
import '../../../cubit/login_cubit.dart';
import '../../../cubit/login_state.dart';

class PhoneAuthTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  final TextInputType textInputType;
  final Widget suffix;
  final int maxLength;
  final String hintText;

  const PhoneAuthTextFormField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.validator,
    required this.textInputType,
    required this.hintText,
    required this.suffix,
    required this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return TextFormField(
          textDirection: TextDirection.ltr,
          style: GoogleFonts.cairo(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.30,
          ),
          controller: controller,
          obscureText: obscureText,
          cursorColor: Colors.black,
          maxLength: maxLength,
          buildCounter: (BuildContext context,
                  {required int currentLength,
                  required bool isFocused,
                  required int? maxLength}) =>
              null,
          onChanged: (value) {
            context.read<LoginCubit>().changeButtonStatus();
          },
          keyboardType: textInputType,
          validator: (value) => validator(value),
          decoration: InputDecoration(
            hintText: 'xxx xxxx xxxx',
            prefixIcon: Padding(
              padding: EdgeInsets.all(13.w),
              child: SvgPicture.asset('assets/svgs/phone.svg'),
            ),
            fillColor: darkclr,
            suffixIcon: SizedBox(
              width: 50.w,
              child: Row(
                children: [
                  horizontalSpace(5),
                  Container(
                    height: 22.w,
                    width: 2,
                    color: greyClr,
                  ),
                  horizontalSpace(5),
                  const TextUtils(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: greyClr,
                      text: '+966'),
                ],
              ),
            ),
            hintTextDirection: TextDirection.ltr,
            hintStyle: GoogleFonts.cairo(
              color: greyClr,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
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
          ),
        );
      },
    );
  }
}
