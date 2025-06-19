import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/cupertino.dart';

import 'slider/home_slider_widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.displayWidth / 1,
      child: const HomeSliderWidget(),
    );
  }
}
