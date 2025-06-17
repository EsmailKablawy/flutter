import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/routing/routes.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/button_utils.dart';
import 'package:event/core/widget/lottie_animation.dart';
import 'package:event/core/widget/padding_utils.dart';
import 'package:event/core/widget/slide_enimation_widget.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';

class SubscriptionSucsfullScreen extends StatelessWidget {
  const SubscriptionSucsfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: paddingUtils(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(80),
              LottieAnimation(
                lottiePath: 'assets/lottie/done.json',
                width: context.displayWidth / 2,
              ),
              TextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: greyClr,
                  text: 'تم تسجيل حسابك بنجاح'.tr()),
              verticalSpace(20),
              TextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  text: 'دعنا نجعل لحظاتك الخاصة اكثر تميزا'.tr()),
              verticalSpace(40),
              SlideEnimationWidget(
                index: 0,
                child: ButtonUtils(
                    text: 'ابدأ الان',
                    onPressed: () {
                      context.pushNamedAndRemoveUntil(
                        AppRoute.mainScreen,
                        predicate: (route) => false,
                      );
                    },
                    colorstext: Colors.white,
                    background: mainColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
