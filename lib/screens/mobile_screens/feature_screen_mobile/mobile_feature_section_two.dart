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
      height: AppSize.s700,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     /// Design Image
          //     Image.asset(
          //       "images/design 1.png",
          //       height: AppSize.s380,
          //       width: MediaQuery.of(context).size.width / 3,
          //     ),
          //   ],
          // ),

          /// 3 Texts in 1 String
          Padding(
            padding: EdgeInsets.only(
                left: 30,
                top: AppPadding.p100),
            child: Text(
              AppString.dreamIt,
              style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 10,
                  FontWeightManager.extraBold,
                  ColorManager.darkBlue1),
            ),
          ),

          /// Base Image
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 15,
              top: 60,
            ),
            child: Row(
              children: [
                Image.asset(
                  "images/Rectangle 682.png",
                  height: 636,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: const EdgeInsets.only(left: 50, top:100),
            child: Image.asset(
              'images/rectangle.png',
              height: 650,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),

          /// Comma 1
          Padding(
            padding: EdgeInsets.only(
                left: 60,
                top: 250),
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
                left: MediaQuery.of(context).size.width / 4.3,
                top: 350),
            child: Text(AppString.featureTxt,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 35,
                    color: ColorManager.white)),
          ),

          /// Comma 2
          Padding(
            padding: EdgeInsets.only(
                left:230,
                top: 365),
            child: Row(
              children: [
                Image.asset(
                  'images/inverted_end_white.png',
                  height: MediaQuery.of(context).size.height / 5,
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
