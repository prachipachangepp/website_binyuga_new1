import 'package:flutter/material.dart';
import '../../presentation/value_manager.dart';

import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';

class CareerSectionTwo extends StatelessWidget {
  const CareerSectionTwo({super.key});

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
                    top: AppPadding.p30,
                    left: MediaQuery.of(context).size.width / 20),
                child: Text(AppString.sculptYour,
                    style: WhatWeDoSubPageConstant.subHomeTextStyle(context)),
              ),
            ],
          ),

          /// Base Image
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 9.5,
                top: AppPadding.p70),
            child: Row(
              children: [
                Image.network(
                  'images/Rectangle 677.png',
                  height: AppSize.s635,
                  width: MediaQuery.of(context).size.width / 1.9,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 7.5,
                top: AppPadding.p58),
            child: Image.network(
              "images/Rectangle 682.png",
              height: AppSize.s720,
              width: MediaQuery.of(context).size.width / 1.9,
            ),
          ),

          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(
              top: AppPadding.p170,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'images/inverted_start_white.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 5,
                top: AppPadding.p280),
            child: Text(AppString.weSee,
                style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 50,
                  FontWeightManager.medium,
                  ColorManager.white,
                )),
          ),

          ///Inverted Comma End
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 3,
                top: AppPadding.p430),
            child: Row(
              children: [
                Image.network(
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
