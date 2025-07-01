import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/widget/center_text_utils.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/button_utils.dart';
import '../../../../core/widget/slide_enimation_widget.dart';
import '../widget/on_board_text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: InkWell(
                  onTap: () {
                    context.pushNamedAndRemoveUntil(
                      AppRoute.selectTypeScreen,
                      predicate: (route) => false,
                    );
                  },
                  child: Container(
                      padding: EdgeInsets.all(5.w),
                      decoration: const BoxDecoration(
                          color: offWhiteClr, shape: BoxShape.circle),
                      child: Icon(
                        Icons.close,
                        size: 18.w,
                      )),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: context.displayWidth / 1,
                    height: context.displayHeight / 1.6,
                    padding: EdgeInsets.only(bottom: 40.w),
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: imaaage.length,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (_, i) {
                        return SizedBox(
                          width: width / 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SlideEnimationWidget(
                                  index: i,
                                  child: Image.asset(
                                    imaaage[i],
                                  ),
                                ),
                              ),
                              CenterTextUtils(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: mainColor,
                                  text: title[i]),
                              verticalSpace(20),
                              CenterTextUtils(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: blackclr,
                                  text: descrip[i]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  PositionedDirectional(
                    bottom: 0.w,
                    start: 0,
                    end: 0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (currentIndex == 0) {
                                context.pushNamedAndRemoveUntil(
                                  AppRoute.selectTypeScreen,
                                  predicate: (route) => false,
                                );
                              } else {
                                _controller.previousPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: TextUtils(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: blackclr,
                                  text: currentIndex == 0
                                      ? 'تخطي'.tr()
                                      : 'العوده'.tr()),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Center(
                              child: AnimatedSmoothIndicator(
                                activeIndex: currentIndex,
                                count: 3,
                                curve: Curves.easeIn,
                                duration: const Duration(milliseconds: 300),
                                onDotClicked: (index) {},
                                effect: const ExpandingDotsEffect(
                                    dotHeight: 10,
                                    dotWidth: 10,
                                    activeDotColor: mainColor,
                                    dotColor: offWhiteClr),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (currentIndex == imaaage.length - 1) {
                                context.pushNamedAndRemoveUntil(
                                  AppRoute.selectTypeScreen,
                                  predicate: (route) => false,
                                );
                              } else {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              }
                            },
                            child: Align(
                              alignment: AlignmentDirectional.centerEnd,
                              child: TextUtils(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  text: currentIndex == 2
                                      ? 'ابدأ الان'.tr()
                                      : 'التالي'.tr()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List imaaage = [
    'assets/images/In no time-rafiki 1.png',
    'assets/images/onboard-2.png',
    'assets/images/on_board-3.png',
  ];
  List title = [
    'كل الخدمات في مكان واحد'.tr(),
    ' كل شيء تحت متابعتك'.tr(),
    'انضم إلى عالم تجهيزة'.tr(),
  ];
  List descrip = [
    'نظم حفلتك، احجز ديكور، اطلب ورود أو هدايا — كل هذا بنقرة واحدة.'.tr(),
    'تابع حال الطلب، اعرف مواعيدك، واحصل على إشعارات بكل جديد.'.tr(),
    'كن جزءًا من منصتنا وابدأ بعرض خدماتك.  نساعدك على الوصول لعملاء جدد وتنمية أعمالك بسهولة.'
        .tr(),
  ];

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
