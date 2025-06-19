import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/app_bar_utils.dart';
import 'package:flutter/material.dart';

import '../widgets/notification_view_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUtils(context: context, title: 'الاشعارات'.tr()),
      body: const NotificationViewBody(),
    );
  }
}
