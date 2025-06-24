import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:event/features/event/ui/screens/evet_screens/my_invitations_screen.dart';
import 'package:event/features/event/ui/screens/evet_screens/my_occasions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/button_utils.dart';
import '../../../../core/widget/padding_nav_bar.dart';

enum Sky {
  midnight,
  viridian,
}

Map<Sky, Color> sky2Colors = <Sky, Color>{};

class EventDataWidget extends StatefulWidget {
  const EventDataWidget({super.key});

  @override
  State<EventDataWidget> createState() => _EventDataWidgetState();
}

class _EventDataWidgetState extends State<EventDataWidget> {
  Sky _selectedSegment = Sky.midnight;
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedSegment.index);
  }

  void _onSegmentChanged(Sky? value) {
    if (value != null) {
      setState(() {
        _selectedSegment = value;
        currentIndex = value.index;
      });
      _pageController.animateToPage(
        value.index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedSegment = Sky.values[index];
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: CupertinoSlidingSegmentedControl<Sky>(
              backgroundColor: Colors.white,
              // thumbColor: skyColors[_selectedSegment]!,
              groupValue: _selectedSegment,
              thumbColor: mainColor,
              onValueChanged: _onSegmentChanged,
              children: <Sky, Widget>{
                Sky.midnight: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.w),
                  child: TextUtils(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: currentIndex == 0 ? Colors.white : blackclr,
                      text: 'مناسباتي'.tr()),
                ),
                Sky.viridian: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 3.w),
                  child: TextUtils(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: currentIndex != 0 ? Colors.white : blackclr,
                      text: 'تم دعوتي'.tr()),
                ),
              },
            ),
          ),
          child: PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: const [
              //MyOccasionsScreen
              MyOccasionsScreen(),
              //my_invitations_screen
              MyInvitationsScreen()
            ],
          ),
        ),
        PositionedDirectional(
            bottom: 10.w,
            start: 20,
            end: 20,
            child: Padding(
              padding: paddingNavBar(),
              child: ButtonUtils(
                  text: 'انشاء مناسبة جديدة',
                  onPressed: () {},
                  colorstext: Colors.white,
                  background: mainColor),
            ))
      ],
    );
  }
}
