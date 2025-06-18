import 'package:event/features/reservation/ui/widgets/edit_reservation_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class EditReservationView extends StatelessWidget {
  const EditReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: EditReservationViewBody(),
    );
  }
}
