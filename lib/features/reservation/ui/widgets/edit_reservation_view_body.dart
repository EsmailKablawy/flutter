import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/custom_grid_view.dart';
import '../../../../core/widget/filter_tabs.dart';

class EditReservationViewBody extends StatelessWidget {
  const EditReservationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(10)),
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
