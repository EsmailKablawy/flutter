import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/thems/thems.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widget/padding_utils.dart';
import 'slider/home_slider_widget.dart';

class HomeAppBarWidget extends StatefulWidget {
  const HomeAppBarWidget({super.key});

  @override
  State<HomeAppBarWidget> createState() => _HomeAppBarWidgetState();
}

class _HomeAppBarWidgetState extends State<HomeAppBarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    // Animate height from 0 to full height
    _heightAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutCubic,
      ),
    );

    // Fade in while expanding
    _opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5, color: offWhiteClr, offset: Offset(-1, 4))
            ],
          ),
          // Clip the overflow during animation
          clipBehavior: Clip.antiAlias,
          // Animate the height
          height: _heightAnimation.value *
              450.w, // Adjust 200 to your app bar's height
          child: Opacity(
            opacity: _opacityAnimation.value,
            child: child,
          ),
        );
      },
      child: SizedBox(
        width: context.displayWidth / 1,
        child: const HomeSliderWidget(),
      ),
    );
  }
}
