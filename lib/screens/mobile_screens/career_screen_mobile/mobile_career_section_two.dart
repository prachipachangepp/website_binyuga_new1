import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileCareerSectionTwo extends StatelessWidget {
  const MobileCareerSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSize.s1200,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          ///txt 1
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppPadding.p50,
                  left: MediaQuery.of(context).size.width / 20,
                ),
                child: Text(AppString.sculptYour,
                    style: WhatWeDoSubPageConstant.subHomeTextStyle(context)),
              ),
            ],
          ),

          /// Base Image

          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.7,
                top: AppPadding.p80),
            child: Row(
              children: [
                Image.asset(
                  "images/Rectangle 682.png",
                  height: AppSize.s855,
                  width: MediaQuery.of(context).size.width / 1.7,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 3.5,
              top: AppPadding.p200,
            ),
            child: Image.asset(
              'images/rectangle.png',
              height: 530,
              width: MediaQuery.of(context).size.width / 1.5,
            ),
          ),

          ///inverted comma start
          Padding(
            padding:  EdgeInsets.only(
              top: AppPadding.p170,left: MediaQuery.of(context).size.width / 4,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/inverted_start_white.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.2,
                top: AppPadding.p250),
            child: Text(AppString.weSee,
                style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 55,
                  FontWeightManager.medium,
                  ColorManager.white,
                )),
          ),

          ///Inverted Comma End
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 1.7,
                top: AppPadding.p470),
            child: Row(
              children: [
                Image.asset(
                  'images/inverted_end_white.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),
        ]));
  }
}