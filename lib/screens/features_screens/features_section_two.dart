import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/value_manager.dart';

class FeatureSectionTwo extends StatelessWidget {
  const FeatureSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s1300,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// Design Image
              Image.network(
                "images/design 1.png",
                height: AppSize.s380,
                width: MediaQuery.of(context).size.width / 3,
              ),
            ],
          ),

          /// 3 Texts in 1 String
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 3,
                top: AppPadding.p200),
            child: Text(
              AppString.dreamIt,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 30,
                  fontWeight: FontWeightManager.extraBold,
                  decoration: TextDecoration.none,
                  color: ColorManager.darkBlue1),
            ),
          ),

          /// Base Image
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 15,
              top: AppPadding.p430,
            ),
            child: Row(
              children: [
                Image.network(
                  "images/Rectangle 682.png",
                  height: AppSize.s636,
                  width: MediaQuery.of(context).size.width / 1.6,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: const EdgeInsets.only(left: 190, top: AppPadding.p420),
            child: Image.network(
              'images/Rectangle 677.png',
              height: AppSize.s780,
              width: MediaQuery.of(context).size.width / 1.7,
            ),
          ),

          /// Comma 1
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 32,
                top: AppPadding.p510),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                left: MediaQuery.of(context).size.width / 4.3,
                top: AppPadding.p610),
            child: Text(AppString.featureTxt,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 50,
                    color: ColorManager.white)),
          ),

          /// Comma 2
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.5,
                top: AppPadding.p780),
            child: Row(
              children: [
                Image.network(
                  'images/inverted_end_white.png',
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
