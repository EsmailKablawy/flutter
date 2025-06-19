import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/slide_enimation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/animated_svg_icon.dart';
import '../../../../core/widget/text_utils.dart';
import '../widget/bottom_nav_bar_animation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  var currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SlideEnimationWidget(
        index: 0,
        child: BottomNavBarAnimation(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          height: 71.w,
          animationCurve: Curves.easeInOut,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          index: currentIndex,
          letIndexChange: (index) => true,
          color: Colors.white,
          animationDuration: const Duration(milliseconds: 150),
          items: [
            _buildNavItem(
                'assets/svgs/home_screen_icon.svg', 'الرئيسية'.tr(), 0),
            _buildNavItem(
                'assets/svgs/service_screen_icon.svg', 'الخدمات'.tr(), 1),
            _buildNavItem(
                'assets/svgs/carbon_event_screen.svg', 'المناسبات'.tr(), 2),
            _buildNavItem(
                'assets/svgs/cart_screen_icon.svg', 'عربة التسوق'.tr(), 3),
            _buildNavItem(
                'assets/svgs/profile_screen_icon.svg', 'حسابي'.tr(), 4),
          ],
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        // ignore: invalid_use_of_protected_member
        children: tabs,
      ),
    );
  }

  Widget _buildNavItem(String imagePath, String label, int index) {
    return currentIndex == index
        // ignore: deprecated_member_use
        ? SvgPicture.asset(
            imagePath,
            // ignore: deprecated_member_use
            color: mainColor,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              SvgPicture.asset(imagePath, color: greyClr),
              TextUtils(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: greyClr,
                  text: label),
            ],
          );
  }
}
