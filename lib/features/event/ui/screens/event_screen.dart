import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/main_app_bar.dart';
import 'package:flutter/material.dart';

import '../widget/event_data_widget.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context: context, title: 'المناسبات'.tr()),
      body: const EventDataWidget(),
    );
  }
}
