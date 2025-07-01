import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/routing/routes.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/button_utils.dart';
import 'package:event/core/widget/padding_utils.dart';
import 'package:event/core/widget/slide_enimation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/thems/thems.dart';
import '../../../../core/widget/center_text_utils.dart';

class SelectTypeScreen extends StatelessWidget {
  const SelectTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: paddingUtils(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(70),
              //image
              SlideEnimationWidget(
                index: 0,
                child: Container(
                  width: context.displayWidth / 1,
                  height: 200.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'))),
                ),
              ),
              verticalSpace(20),
              //titile
              CenterTextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: mainColor,
                  text: 'اختر نوع الحساب'.tr()),
              verticalSpace(70),
              //desc
              Row(
                children: [
                  Expanded(
                    child: SlideEnimationWidget(
                      index: 0,
                      child: ButtonUtils(
                          text: 'مستفيد'.tr(),
                          onPressed: () {
                            context.pushNamed(AppRoute.signUpScreen);
                          },
                          colorstext: Colors.white,
                          background: mainColor),
                    ),
                  ),
                  horizontalSpace(15),
                  Expanded(
                    child: SlideEnimationWidget(
                      index: 1,
                      child: ButtonUtils(
                          text: 'مقدم خدمة'.tr(),
                          onPressed: () {},
                          colorstext: mainColor,
                          background: Colors.white),
                    ),
                  )
                ],
              )
              //buttons
            ],
          ),
        ),
      ),
    );
  }
}
