import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/custom_grid_view.dart';
import '../../../../core/widget/filter_tabs.dart';

class EditReservationViewBody extends StatelessWidget {
  const EditReservationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(height: context.displayWidth * 0.08)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.displayWidth * 0.045),
              child: CustomAppBar(
                hasText: true,
                text: 'تعديل تفاصيل الحجز',
                onRightTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(height: context.displayWidth * 0.08)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: context.displayWidth * 0.1,
              child: FilterTabs(
                tabs: const ['مكتمل', 'قيد التنفيذ', 'ملغي'],
                onTabSelected: (index) {},
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(height: context.displayWidth * 0.08)),
          const SliverToBoxAdapter(child: CustomGridView()),
        ],
      ),
    );
  }
}
