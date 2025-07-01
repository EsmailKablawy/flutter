import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/routing/routes.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/text_from_field_utils_widget.dart';
import 'package:event/features/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/padding_nav_bar.dart';
import '../../../../core/widget/padding_utils.dart';
import '../../../../core/widget/text_utils.dart';
import '../../cubit/login_state.dart';
import '../widgets/login/login_button_widget.dart';
import '../widgets/login/login_phone_number_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Text(''),
          actions: [
            Container(
              width: 100.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
            horizontalSpace(20),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: paddingNavBar(),
          child: const LoginButtonWidget(),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              // Unfocus the currently focused text field
              FocusScope.of(context).unfocus();
            },
            child: Container(
              width: context.displayWidth / 1,
              // height: context.displayHeight / 1.06,
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
                      text: 'سجل دخول الي حسابك الان '.tr()),

                  verticalSpace(15),
                  TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      text: 'رقم الهاتف'.tr()),
                  verticalSpace(15),
                  //phone number
                  const LoginPhoneNumberWidget(),
                  verticalSpace(15),
                  TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      text: 'كلمة المرور'.tr()),
                  verticalSpace(15),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return AnimateBuilder(
                        columnCount: 1,
                        position: 1,
                        child: TextFromFieldUtilsWidget(
                            suffix: context.read<LoginCubit>().passwordShow
                                ? GestureDetector(
                                    onTap: () {
                                      context
                                          .read<LoginCubit>()
                                          .changePasswrodShow();
                                    },
                                    child: const AnimateBuilder(
                                      columnCount: 1,
                                      position: 0,
                                      child: Icon(
                                        Icons.visibility_outlined,
                                        color: greyClr,
                                      ),
                                    ),
                                  )
                                : AnimateBuilder(
                                    columnCount: 1,
                                    position: 0,
                                    child: InkWell(
                                      onTap: () {
                                        context
                                            .read<LoginCubit>()
                                            .changePasswrodShow();
                                      },
                                      child: const Icon(
                                        Icons.visibility_off_rounded,
                                        color: greyClr,
                                      ),
                                    ),
                                  ),
                            prefix: Padding(
                              padding: EdgeInsets.all(13.w),
                              child: SvgPicture.asset(
                                'assets/svgs/password_log.svg',
                                color: mainColor,
                              ),
                            ),
                            controller:
                                context.read<LoginCubit>().controller.password,
                            obscureText:
                                context.read<LoginCubit>().passwordShow,
                            validator: (v) {},
                            textInputType: TextInputType.name,
                            hintText: '********',
                            textInputAction: TextInputAction.next),
                      );
                    },
                  ),
                  verticalSpace(15),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: InkWell(
                      onTap: () {
                        context.pushNamed(AppRoute.forgetPasswordScreen);
                      },
                      child: TextUtils(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: mainColor,
                          text: 'هل نسيت كلمة المرور ؟'.tr()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
