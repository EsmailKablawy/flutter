import 'package:flutter/material.dart';

import '../../../../core/widget/custom_grid_view.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomGridView()),
        ],
      ),
    );
  }
}
