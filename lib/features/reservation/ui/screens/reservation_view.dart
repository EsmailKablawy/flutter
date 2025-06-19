import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/routing/routes.dart';
import 'package:event/core/widget/app_bar_utils.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_floating_action_button.dart';
import '../widgets/reservation_view_body.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUtils(context: context, title: 'إدارة الحجوزات'.tr()),
      body: const ReservationViewBody(),
      floatingActionButton: CustomFloatingActionButton(
        text: 'اضافة خدمة',
        onTap: () {
          Navigator.pushNamed(context, AppRoute.editReservationView);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
