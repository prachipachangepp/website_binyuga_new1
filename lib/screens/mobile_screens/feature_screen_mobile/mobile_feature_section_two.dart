import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';

import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';


class MobileFeatureSectionTwo extends StatelessWidget {
  const MobileFeatureSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.red,
      height: AppSize.s300,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          /// 3 Texts in 1 String

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppString.dreamItM,
                  style: AllScreensConstant.customTextStyle(
                      MediaQuery.of(context).size.width / 15,
                      FontWeightManager.extraBold,
                      ColorManager.darkBlue1),
                ),
              ],
            ),
          ),

          /// Base Image
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "images/Rectangle 682.png",
                  height: 550,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 35),
            child: Image.asset(
              'images/rectangle.png',
              height: 520,
              width: MediaQuery.of(context).size.width / 1.27,
            ),
          ),

          /// Comma 1
          Padding(
            padding: EdgeInsets.only(
                left: 50,
                top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/inverted_start_white.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width /20,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 5,
                top: 190),
            child: Text(AppString.featureTxtM,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 28,
                    color: ColorManager.white)),
          ),

          /// Comma 2
          Padding(
            padding: EdgeInsets.only(
                right:65,
                top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'images/inverted_end_white.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width / 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
