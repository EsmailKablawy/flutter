import 'package:event/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/thems/thems.dart';

class CurrencyWidget extends StatelessWidget {
  const CurrencyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(' 150  ',
            style: GoogleFonts.merriweather(
                color: mainColor,
                fontSize: 15.sp,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.30,
                decoration: TextDecoration.none)),
        SvgPicture.asset('assets/svgs/currancy.svg'),
      ],
    );
  }
}
