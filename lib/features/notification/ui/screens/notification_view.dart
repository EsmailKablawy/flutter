import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../widgets/notification_view_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: NotificationViewBody(),
    );
  }
}
