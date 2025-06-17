import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/padding_nav_bar.dart';
import '../../../../../core/widget/padding_utils.dart';
import '../../../../../core/widget/text_utils.dart';
import '../../../login/ui/widgets/login/login_phone_number_widget.dart';
import '../widget/sign_up_data_input_screen.dart';
import '../widget/signup_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            AnimatedSvgIcon(
              iconPath: 'assets/svgs/Logo-2.svg',
            ),
            horizontalSpace(20),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: paddingNavBar(),
          child: const SignupButtonWidget(),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              // Unfocus the currently focused text field
              FocusScope.of(context).unfocus();
            },
            child: Container(
              width: context.displayWidth / 1,
              height: context.displayHeight / 1.06,
              padding: paddingUtils(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          style: GoogleFonts.cairo(
                            color: mainColor,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                          text: 'اهلا'.tr()),
                      const TextSpan(text: ' '),
                      TextSpan(
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                          text: 'بك !'.tr()),
                    ]),
                  ),
                  verticalSpace(7),
                  TextUtils(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: blackclr,
                      text: 'انشئ حساب الان ونظم جميع مناسباتك بسهولة'.tr()),
                  verticalSpace(15),
                  TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: blackclr,
                      text:
                          'سنقوم بأرسال رمز كود عبر الواتساب او الرسائل النصيه'
                              .tr()),
                  verticalSpace(20),
                  const SignUpDataInputScreen(),
                ],
              ),
            ),
          ),
        ));
  }
}
