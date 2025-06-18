import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../widgets/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: FavoriteViewBody(),
    );
  }
}
