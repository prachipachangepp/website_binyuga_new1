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
      height: AppSize.s300,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          /// 3 Texts in 1 String
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p100),
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
            padding: const EdgeInsets.only(right: AppPadding.p20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "images/Rectangle 682.png",
                  height: AppSize.s550,
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p30, top: AppPadding.p35),
            child: Image.asset(
              'images/rectangle.png',
              height: AppSize.s520,
              width: MediaQuery.of(context).size.width / 1.27,
            ),
          ),

          /// Comma 1
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p50, top: AppPadding.p90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/inverted_start_white.png',
                  height: AppSize.s200,
                  width: MediaQuery.of(context).size.width / 20,
                ),
              ],
            ),
          ),
          ///txt
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 5,
                top: AppPadding.p190),
            child: Text(AppString.featureTxtM,
                style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 30,
                  FontWeightManager.medium,
                  ColorManager.white,
                )),
          ),

          /// Comma 2
          Padding(
            padding: const EdgeInsets.only(
                right: AppPadding.p80, top: AppPadding.p190),
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
