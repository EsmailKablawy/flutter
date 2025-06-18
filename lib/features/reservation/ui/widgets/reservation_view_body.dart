import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/custom_grid_view.dart';
import '../../../../core/widget/filter_tabs.dart';

class ReservationViewBody extends StatelessWidget {
  const ReservationViewBody({super.key});

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
                text: 'إدارة الحجوزات',
                icon: const Icon(Icons.search),
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

          // SliverFillRemaining(
          //   hasScrollBody: false,
          //
          //   child:
          //       CustomNoItemsBody(
          //         imagePath: ImagePath.favoriteStar,
          //         title: 'لاتوجد منتجات مفضلة الان !',
          //         subTitle:
          //             'لا توجد عناصر مفضلة حتى الآن. أضف منتجاتك المفضلة لتسهيل الوصول إليها لاحقًا',
          //         hasButton: true,
          //         buttonText: 'العودة الي الرئيسية',
          //       ),
          // ),
          const SliverToBoxAdapter(child: CustomGridView()),
        ],
      ),
    );
  }
}
