import 'package:event/core/widget/app_bar_utils.dart';
import 'package:flutter/material.dart';

import '../widgets/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUtils(context: context, title: 'المفضلة'),
      body: const FavoriteViewBody(),
    );
  }
}
