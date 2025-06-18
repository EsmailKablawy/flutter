import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/padding_nav_bar.dart';
import '../../../../core/widget/padding_utils.dart';
import '../../../../core/widget/text_utils.dart';
import '../widget/forget_password_phone.dart';
import '../widget/forget_password_button_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
          child: const ForgetPasswordButtonWidget(),
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
                  TextUtils(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      text: 'هل نسيت كلمة المرور ؟'.tr()),
                  verticalSpace(15),
                  TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: blackclr,
                      text:
                          'ادخل رقم هاتفك  وسنرسل لك رمز إعادة تعيين كلمة المرور'
                              .tr()),
                  verticalSpace(20),
                  TextUtils(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      text: 'رقم الهاتف'.tr()),
                  verticalSpace(15),
                  //phone number
                  const ForgetPasswordPhone(),
                ],
              ),
            ),
          ),
        ));
  }
}
