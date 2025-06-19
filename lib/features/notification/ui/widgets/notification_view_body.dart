import 'package:event/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/filter_tabs.dart';
import 'custom_notification_list_view.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: width * 0.1,
              child: FilterTabs(
                tabs: ['الكل', 'مقروءة', 'غير مقروءة'],
                onTabSelected: (index) {},
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomNotificationListView(),
          ),
        ],
      ),
    );
  }
}
