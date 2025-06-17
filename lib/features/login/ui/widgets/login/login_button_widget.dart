import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/widget/slide_enimation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/button_utils.dart';
import '../../../../../core/widget/loading_button_utils.dart';
import '../../../../../core/widget/showSuccesSnackBar.dart';
import '../../../../../core/widget/show_error_snack_bar.dart';
import '../../../cubit/login_cubit.dart';
import '../../../cubit/login_state.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.w,
      child: Column(
        children: [
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is SendVerificationCodeSuccess) {
                showSuccesSnackBar(
                    context: context, title: 'تم إرسال رمز التحقق بنجاح'.tr());
                context.pushNamed(AppRoute.pinputScreen, arguments: {
                  'phoneNumber': context.read<LoginCubit>().codeCountry +
                      context.read<LoginCubit>().controller.phone.text
                });
              }
              if (state is SendVerificationCodeError) {
                showErrorSnackBar(
                    context: context, title: 'الرجاء التحقق من رقم هاتفك'.tr());
              }
            },
            builder: (context, state) {
              if (state is SendVerificationCodeLoading) {
                return const LoadButtonUtils();
              }
              return SlideEnimationWidget(
                index: 0,
                child: ButtonUtils(
                    text: 'التالي'.tr(),
                    onPressed: () async {},
                    colorstext: Colors.white,
                    background: mainColor),
              );
            },
          ),
          verticalSpace(15),
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    style: GoogleFonts.cairo(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.30,
                    ),
                    text: 'ليس لديك حساب؟'.tr()),
                const TextSpan(text: ' '),
                TextSpan(
                    style: GoogleFonts.cairo(
                      color: mainColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.30,
                    ),
                    text: 'أنشئ حسابك'.tr()),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
