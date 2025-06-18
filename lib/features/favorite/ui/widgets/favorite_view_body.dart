import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/custom_grid_view.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

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
                text: 'المفضلة',
                onRightTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: width * 0.08)),

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
