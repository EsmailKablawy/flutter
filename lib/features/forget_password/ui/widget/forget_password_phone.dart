import 'package:easy_localization/easy_localization.dart';
import 'package:event/features/forget_password/cubit/forget_password_cubit.dart';
import 'package:event/features/forget_password/cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/cache/cach_Helper.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/anmiate_builder.dart';
import 'forget_phone_auth_text_from_field.dart';

// ignore: must_be_immutable
class ForgetPasswordPhone extends StatelessWidget {
  const ForgetPasswordPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
      builder: (context, state) {
        return AnimateBuilder(
          columnCount: 1,
          position: 0,
          child: Row(
            children: [
              Visibility(
                visible: CacheHelper.getlang().toString() == 'en',
                child: Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      height: 50.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: greyClr)),
                      child: Row(
                        children: [
                          //logo
                          Text(
                            context.read<ForgetPasswordCubit>().country,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          horizontalSpace(5),
                          SvgPicture.asset('assets/svgs/Icons-2.svg')
                          //icon
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: ForgetPhoneAuthTextFromField(
                maxLength: context.read<ForgetPasswordCubit>().maxLength,
                controller: context.read<ForgetPasswordCubit>().phone,
                obscureText: false,
                validator: (validator) {},
                textInputType: TextInputType.phone,
                hintText: 'رقم الهاتف'.tr(),
                suffix: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                      color: mainColor, 'assets/svgs/phone_icon_new.svg'),
                ),
              )),
            ],
          ),
        );
      },
    );
  }
}
