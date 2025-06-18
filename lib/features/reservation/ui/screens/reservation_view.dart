import 'package:event/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../widgets/custom_floating_action_button.dart';
import '../widgets/reservation_view_body.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
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
