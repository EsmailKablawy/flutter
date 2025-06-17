import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/widget/slide_enimation_widget.dart';
import 'package:event/features/forget_password/cubit/forget_password_cubit.dart';
import 'package:event/features/forget_password/cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/button_utils.dart';
import '../../../../../core/widget/loading_button_utils.dart';
import '../../../../../core/widget/showSuccesSnackBar.dart';
import '../../../../../core/widget/show_error_snack_bar.dart';

class ForgetPasswordButtonWidget extends StatelessWidget {
  const ForgetPasswordButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is SendVerificationCodeSuccess) {
          showSuccesSnackBar(
              context: context, title: 'تم إرسال رمز التحقق بنجاح'.tr());
          context.pushNamed(AppRoute.pinputScreen, arguments: {
            'phoneNumber': context.read<ForgetPasswordCubit>().codeCountry +
                context.read<ForgetPasswordCubit>().phone.text
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
              colorstext: context.read<ForgetPasswordCubit>().isAvailable
                  ? Colors.white
                  : blackclr.withOpacity(0.5),
              background: context.read<ForgetPasswordCubit>().isAvailable
                  ? mainColor
                  : mainColor.withOpacity(0.2)),
        );
      },
    );
  }
}
