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
          SliverToBoxAdapter(child: SizedBox(height: width * 0.08)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.045),
              child: CustomAppBar(
                hasText: true,
                text: 'الاشعارات',
                onRightTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: width * 0.08)),
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
            child:
                // CustomNoItemsBody(
                //   imagePath: ImagePath.notificationImg,
                //   title: 'لاتوجد اشعارات الان !',
                //   subTitle:
                //       'لا توجد إشعارات جديدة حاليًا , استمتع بلحظتك وسنُرسل لك عند ورود أي تحديث جديد.',
                // ),
                CustomNotificationListView(),
          ),
        ],
      ),
    );
  }
}
