import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:event/core/widget/padding_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/thems/thems.dart';
import '../../../../core/widget/anmiate_builder.dart';
import '../../../../core/widget/filter_tabs.dart';
import '../../../../core/widget/main_app_bar.dart';
import '../../../../core/widget/text_utils.dart';
import '../widget/serviece_item_widget.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context: context, title: 'الخدمات'.tr()),
      body: Container(
        height: context.displayHeight / 1,
        width: context.displayWidth / 1,
        padding: paddingUtils(),
        child: Column(
          children: [
            SizedBox(
              height: 33.w,
              child: FilterTabs(
                tabs: const ['الكل', 'الهدايا', 'غير الديكورات', 'الديكورات'],
                onTabSelected: (index) {},
              ),
            ),
            verticalSpace(15),
            SizedBox(
              height: context.displayHeight / 1.5,
              child: const CustomScrollView(
                slivers: [
                  ServieceItemWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
