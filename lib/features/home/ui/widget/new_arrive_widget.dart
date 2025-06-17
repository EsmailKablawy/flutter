import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/anmiate_builder.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'currency_widget.dart';

class NewArriveWidget extends StatelessWidget {
  const NewArriveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtils(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: blackcolor,
            text: 'وصل حديثا'.tr()),
        verticalSpace(10),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          padding: const EdgeInsets.all(0),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 20.w,
              mainAxisExtent: 220.w),
          itemBuilder: (context, index) {
            return AnimateBuilder(
              columnCount: 2,
              position: index,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    //
                    Container(
                        width: context.displayWidth / 1,
                        height: 135.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/8cc441e71155d10dca1ca8c67be752b92e9ed2b6.jpg'))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 7.w, horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: REdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 3.w),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: yellowclr,
                                      size: 14.w,
                                    ),
                                    horizontalSpace(4),
                                    TextUtils(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: blackcolor,
                                        text: '4.3'.tr()),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.w),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.7),
                                    shape: BoxShape.circle),
                                child: SvgPicture.asset(
                                  'assets/svgs/fav.svg',
                                  width: 16.w,
                                ),
                              )
                            ],
                          ),
                        )),
                    verticalSpace(5),
                    TextUtils(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: blackcolor,
                        text: 'باقة زهور خريفية ابيض - وردي'.tr()),
                    verticalSpace(5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CurrencyWidget(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: TextUtils(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: greyClr,
                              text: 'خصم 15 %'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
