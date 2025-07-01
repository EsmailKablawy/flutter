import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/anmiate_builder.dart';
import '../../../../core/widget/text_from_field_utils_widget.dart';
import '../../../../core/widget/text_utils.dart';
import '../../../login/cubit/login_cubit.dart';
import '../../../login/ui/widgets/login/login_phone_number_widget.dart';
import 'sign_up_password_input.dart';

class SignUpDataInputScreen extends StatelessWidget {
  const SignUpDataInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //name
        TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            text: 'الاسم كامل'.tr()),
        verticalSpace(10),
        AnimateBuilder(
          columnCount: 1,
          position: 0,
          child: TextFromFieldUtilsWidget(
              prefix: Padding(
                padding: EdgeInsets.all(13.w),
                child:
                    SvgPicture.asset(color: mainColor, 'assets/svgs/user.svg'),
              ),
              controller: context.read<LoginCubit>().controller.name,
              obscureText: false,
              validator: (v) {},
              textInputType: TextInputType.name,
              hintText: 'الاسم الاول/الاخير'.tr(),
              textInputAction: TextInputAction.next),
        ),
        verticalSpace(15),
        //email
        TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            text: 'البريد الإلكتروني'.tr()),
        verticalSpace(10),
        AnimateBuilder(
          columnCount: 1,
          position: 1,
          child: TextFromFieldUtilsWidget(
              prefix: Padding(
                padding: EdgeInsets.all(13.w),
                child:
                    SvgPicture.asset(color: mainColor, 'assets/svgs/mail.svg'),
              ),
              controller: context.read<LoginCubit>().controller.email,
              obscureText: false,
              validator: (v) {},
              textInputType: TextInputType.emailAddress,
              hintText: 'البريد الإلكتروني'.tr(),
              textInputAction: TextInputAction.next),
        ),
        verticalSpace(15),
        TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            text: 'رقم الهاتف'.tr()),
        verticalSpace(10),
        //phone number
        const LoginPhoneNumberWidget(),
        //password
        verticalSpace(15),
        const SignUpPasswordInput(),
        verticalSpace(15),
      ],
    );
  }
}
