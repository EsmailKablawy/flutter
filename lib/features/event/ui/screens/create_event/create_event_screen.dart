import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/widget/app_bar_utils.dart';
import 'package:event/core/widget/padding_utils.dart';
import 'package:flutter/material.dart';

import '../../widget/create_event_widget/choose_services_widget.dart';
import '../../widget/create_event_widget/event_name.dart';
import '../../widget/create_event_widget/evnet_data_widget.dart';
import '../../widget/create_event_widget/select_event_location_widget.dart';
import '../../widget/create_event_widget/select_guest_count_widget.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUtils(context: context, title: 'انشاء مناسبة'.tr()),
      body: Container(
        padding: paddingUtils(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //event name
              EventName(),
              verticalSpace(15),
              //event date
              const EvnetDataWidget(),
              verticalSpace(15),
              //event location
              const SelectEventLocationWidget(),
              verticalSpace(15),
              //guest count
              const SelectGuestCountWidget(),
              verticalSpace(15),
              //choose service
              const ChooseServicesWidget(),
              verticalSpace(15),
              //add event images
              verticalSpace(15),
              //add notes
              verticalSpace(15),
              //event budget
            ],
          ),
        ),
      ),
    );
  }
}
