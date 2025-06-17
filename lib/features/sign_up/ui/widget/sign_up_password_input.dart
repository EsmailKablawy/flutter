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
import '../../../login/cubit/login_state.dart';

class SignUpPasswordInput extends StatelessWidget {
  const SignUpPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            text: 'كلمة المرور'.tr()),
        verticalSpace(10),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return AnimateBuilder(
              columnCount: 1,
              position: 3,
              child: TextFromFieldUtilsWidget(
                  suffix: context.read<LoginCubit>().passwordShow
                      ? GestureDetector(
                          onTap: () {
                            context.read<LoginCubit>().changePasswrodShow();
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
                              context.read<LoginCubit>().changePasswrodShow();
                            },
                            child: const Icon(
                              Icons.visibility_off_rounded,
                              color: greyClr,
                            ),
                          ),
                        ),
                  prefix: Padding(
                    padding: EdgeInsets.all(13.w),
                    child: SvgPicture.asset('assets/svgs/password_log.svg'),
                  ),
                  controller: context.read<LoginCubit>().controller.password,
                  obscureText: context.read<LoginCubit>().passwordShow,
                  validator: (v) {},
                  textInputType: TextInputType.name,
                  hintText: '********',
                  textInputAction: TextInputAction.next),
            );
          },
        ),
        verticalSpace(15),
        TextUtils(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            text: 'إعادة كلمة المرور'.tr()),
        verticalSpace(10),
        BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return AnimateBuilder(
              columnCount: 1,
              position: 4,
              child: TextFromFieldUtilsWidget(
                  suffix: context.read<LoginCubit>().passwordShow
                      ? GestureDetector(
                          onTap: () {
                            context.read<LoginCubit>().changePasswrodShow();
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
                              context.read<LoginCubit>().changePasswrodShow();
                            },
                            child: const Icon(
                              Icons.visibility_off_rounded,
                              color: greyClr,
                            ),
                          ),
                        ),
                  prefix: Padding(
                    padding: EdgeInsets.all(13.w),
                    child: SvgPicture.asset('assets/svgs/password_log.svg'),
                  ),
                  controller:
                      context.read<LoginCubit>().controller.confirmpassword,
                  obscureText: context.read<LoginCubit>().passwordShow,
                  validator: (v) {},
                  textInputType: TextInputType.name,
                  hintText: '********',
                  textInputAction: TextInputAction.next),
            );
          },
        ),
      ],
    );
  }
}
