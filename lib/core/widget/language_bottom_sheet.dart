import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/thems/thems.dart';
import '../../../../core/widget/text_utils.dart';
import '../cache/cach_Helper.dart';
import '../helpers/constants.dart';
import '../helpers/shared_pref_helper.dart';
import '../networking/dio_factory.dart';

languagebootomSheet(
  BuildContext context,
) {
  List lang = [
    {'value': 'عربي'.tr(), 'key': 'ar'},
    {'value': 'عبري'.tr(), 'key': 'en'},
  ];
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
          height: 330.w,
          width: context.displayWidth / 1,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 100,
                decoration: BoxDecoration(
                    color: greyClr, borderRadius: BorderRadius.circular(8)),
              ),
              verticalSpace(20),
              Row(
                children: [
                  Expanded(
                    child: TextUtils(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        text: 'اللغة'.tr()),
                  ),
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.clear))
                ],
              ),
              verticalSpace(20),
              // const Spacer(),
              verticalSpace(20),
              ListView.builder(
                itemCount: lang.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      EasyLocalization.of(context)!
                          .setLocale(Locale(lang[index]['key']));
                      await SharedPrefHelper.setSecuredString(
                          SharedPrefKeys.lang, lang[index]['key']);
                      CacheHelper.savelang(lang[index]['key']);
                      log(CacheHelper.getlang());

                      DioFactory.addDioHeaders();

                      Phoenix.rebirth(context);
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 15.h),
                        margin: EdgeInsets.only(bottom: 15.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextUtils(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: EasyLocalization.of(context)!
                                              .locale
                                              .toString() ==
                                          lang[index]['key']
                                      ? mainColor
                                      : Colors.black,
                                  text: lang[index]['value']),
                            ),
                            Container(
                              padding: EdgeInsets.all(2.w),
                              height: 20.w,
                              width: 20.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: mainColor, width: 2),
                              ),
                              child: EasyLocalization.of(context)!
                                          .locale
                                          .toString() ==
                                      lang[index]['key']
                                  ? Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: mainColor,
                                      ),
                                    )
                                  : Container(),
                            )
                          ],
                        )
                        // Align(
                        //   alignment: AlignmentDirectional.bottomCenter,
                        //   child: TextUtils(
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w700,
                        //       color: EasyLocalization.of(context)!
                        //                   .locale
                        //                   .toString() ==
                        //               lang[index]['key']
                        //           ? Colors.white
                        //           : mainColor,
                        //       text: lang[index]['value']),
                        // ),
                        ),
                  );
                },
              ),

              const Spacer(),
            ],
          ));
    },
  );
}
