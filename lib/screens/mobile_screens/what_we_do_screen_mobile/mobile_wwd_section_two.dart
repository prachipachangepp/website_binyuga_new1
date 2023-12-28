import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileWWDSectionTwo extends StatelessWidget {
  const MobileWWDSectionTwo({super.key});

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
                padding: const EdgeInsets.only(
                    top: AppPadding.p70, left: AppPadding.p30),
                child: Text(AppString.trustPropelsBuisnessProsperity,
                    style: WhatWeDoSubPageConstant.subHomeTextStyle(context)),
              ),
            ],
          ),

          /// Base Image
          Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p30,

            ),
            child: Row(
              children: [
                Image.asset(
                  "images/Rectangle 682.png",
                  height: AppSize.s636,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(
                left: 70,
                bottom: 0),
            child: Image.asset(
              'images/rectangle.png',
              height: 680,
              width: MediaQuery.of(context).size.width / 1.3,
            ),
          ),

          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(left:80,top: AppPadding.p200),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/inverted_start.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width / 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left:100,
                top:280),
            child: Text(AppString.weAreDedicated,
                style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 30,
                  FontWeightManager.medium,
                  ColorManager.white,
                )),
          ),

          Padding(
            padding: EdgeInsets.only(
                left: 265,
                top: 265),
            child: Row(
              children: [
                Image.asset(
                  'images/inverted_end.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width /20,
                ),
              ],
            ),
          ),

          ///explore binyuga txt
          Padding(
            padding: const EdgeInsets.only(
                top: AppPadding.p500, right: AppPadding.p58),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppString.exploreBinyuga,
                    textAlign: TextAlign.center,
                    style: WhatWeDoSubPageConstant.subHomeTextStyle(context)),
              ],
            ),
          ),
        ]));
  }
}




