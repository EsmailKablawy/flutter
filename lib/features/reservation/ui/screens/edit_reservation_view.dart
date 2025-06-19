import 'package:easy_localization/easy_localization.dart';
import 'package:event/features/reservation/ui/widgets/edit_reservation_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widget/app_bar_utils.dart';

class EditReservationView extends StatelessWidget {
  const EditReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUtils(context: context, title: 'تعديل تفاصيل الحجز'.tr()),
      body: const EditReservationViewBody(),
    );
  }
}
