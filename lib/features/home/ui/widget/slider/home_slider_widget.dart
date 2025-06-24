import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/thems/thems.dart';
import '../../../../../core/widget/text_utils.dart';
import 'slider_app_bar.dart';

class HomeSliderWidget extends StatelessWidget {
  const HomeSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.w,
      width: context.displayWidth / 1,
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          height: 350.w,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlayInterval: const Duration(seconds: 7),
          autoPlayAnimationDuration: const Duration(milliseconds: 1000),
          viewportFraction: 1,
          onPageChanged: (index, reason) {},
        ),
        itemBuilder: (context, index, realIndex) {
          return Container(
            width: context.displayWidth / 1,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/70df8821c835340fb948b402e78b93b04f5e4e90.jpg'))),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SliderAppBar(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextUtils(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          text: 'احتفل بعيد ميلادك واجعله مميزا معنا  !'.tr()),
                      verticalSpace(15),
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.w, vertical: 10.w),
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextUtils(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: blackcolor,
                              text: 'انشاء مناسبة الان'.tr()),
                        ),
                      ),
                      verticalSpace(30),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
