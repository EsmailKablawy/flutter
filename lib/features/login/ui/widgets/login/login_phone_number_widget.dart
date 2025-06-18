import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/cache/cach_Helper.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/anmiate_builder.dart';
import '../../../cubit/login_cubit.dart';
import '../../../cubit/login_state.dart';
import 'choose_phone_country_widget.dart';
import 'phone_auth_text_from_field.dart';

// ignore: must_be_immutable
class LoginPhoneNumberWidget extends StatelessWidget {
  const LoginPhoneNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return AnimateBuilder(
          columnCount: 1,
          position: 2,
          child: Row(
            children: [
              Visibility(
                visible: CacheHelper.getlang().toString() == 'en',
                child: Padding(
                  padding: EdgeInsetsDirectional.only(end: 10.w),
                  child: InkWell(
                    onTap: () {
                      chooseCountryWidget(context, context.read<LoginCubit>());
                    },
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
                            context.read<LoginCubit>().country,
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
                  child: PhoneAuthTextFormField(
                maxLength: context.read<LoginCubit>().maxLength,
                controller: context.read<LoginCubit>().controller.phone,
                obscureText: false,
                validator: (validator) {},
                textInputType: TextInputType.phone,
                hintText: 'رقم الهاتف'.tr(),
                suffix: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset('assets/svgs/phoneIcons.svg'),
                ),
              )),
            ],
          ),
        );
      },
    );
  }
}
