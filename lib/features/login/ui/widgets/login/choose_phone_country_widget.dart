import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/thems/thems.dart';
import '../../../../../../core/widget/text_utils.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../cubit/login_cubit.dart';

chooseCountryWidget(BuildContext contexxt, LoginCubit cubit) {
  final List<Map<String, dynamic>> countries = [
    {'flag': '🇪🇬', 'code': '+20', 'name': 'مصر', 'maxLength': 10},
    {'flag': '🇸🇦', 'code': '+966', 'name': 'السعودية', 'maxLength': 9},
    {'flag': '🇰🇼', 'code': '+965', 'name': 'الكويت', 'maxLength': 8},
    {'flag': '🇶🇦', 'code': '+974', 'name': 'قطر', 'maxLength': 8},
    {'flag': '🇱🇧', 'code': '+961', 'name': 'لبنان', 'maxLength': 8},
    {'flag': '🇩🇿', 'code': '+213', 'name': 'الجزائر', 'maxLength': 9},
    {'flag': '🇸🇩', 'code': '+249', 'name': 'السودان', 'maxLength': 9},
    {'flag': '🇸🇾', 'code': '+963', 'name': 'سوريا', 'maxLength': 9},
    {'flag': '🇮🇶', 'code': '+964', 'name': 'العراق', 'maxLength': 10},
    {'flag': '🇴🇲', 'code': '+968', 'name': 'عُمان', 'maxLength': 8},
    {'flag': '🇹🇳', 'code': '+216', 'name': 'تونس', 'maxLength': 8},
    {'flag': '🇾🇪', 'code': '+967', 'name': 'اليمن', 'maxLength': 9},
    {'flag': '🇪🇭', 'code': '+212', 'name': 'الصحراء الغربية', 'maxLength': 9},
    {'flag': '🇲🇦', 'code': '+212', 'name': 'المغرب', 'maxLength': 9},
    {'flag': '🇱🇾', 'code': '+218', 'name': 'ليبيا', 'maxLength': 9},
  ];

  return showModalBottomSheet(
    context: contexxt,
    builder: (BuildContext context) {
      return Container(
          height: 410.w,
          width: context.displayWidth / 1,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(
            children: [
              Container(
                height: 5.w,
                width: 100.w,
                decoration: BoxDecoration(
                    color: greyClr, borderRadius: BorderRadius.circular(8)),
              ),
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: TextUtils(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: mainColor,
                        text: 'Reset'.tr()),
                  ),
                  TextUtils(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      text: 'Select country'.tr()),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              verticalSpace(20),
              SizedBox(
                height: 300.w,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            cubit.changeCountryCode(
                                newCountry: countries[index]['flag'],
                                newCode: countries[index]['code'],
                                newMaxLength: countries[index]['maxLength']);
                            cubit.changeButtonStatus();
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              TextUtils(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  text: countries[index]['flag']),
                              horizontalSpace(5),
                              TextUtils(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  text: countries[index]['code']),
                            ],
                          ),
                        ),
                        verticalSpace(7.5),
                        const Divider(),
                        verticalSpace(7.5),
                      ],
                    );
                  },
                ),
              ),
            ],
          ));
    },
  );
}
