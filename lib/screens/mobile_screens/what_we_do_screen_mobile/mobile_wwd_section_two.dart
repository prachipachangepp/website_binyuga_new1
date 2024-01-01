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
        height: AppSize.s636,
        width: MediaQuery.of(context).size.width,
        child: Stack(children:
             [
          ///txt 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: AppPadding.p70,),
                child: Text(AppString.trustPropelsBuisnessProsperity,
                       textAlign: TextAlign.center,
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
                  width: MediaQuery.of(context).size.width / 1.15,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(
                left: 55,
                top: 50),
            child: Image.asset(
              'images/rectangle.png',
              height: 680,
              width: MediaQuery.of(context).size.width / 1.20,
            ),
          ),

          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(left:65,top: AppPadding.p150),
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
                left:85,
                top:255),
            child: Text(MobileAppString.weAreDedicated,
                style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 27,
                  FontWeightManager.semiBold,
                  ColorManager.white,
                )),
          ),

          Padding(
            padding: EdgeInsets.only(
                right: 100,
                top: 245),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
                top: AppPadding.p500,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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




