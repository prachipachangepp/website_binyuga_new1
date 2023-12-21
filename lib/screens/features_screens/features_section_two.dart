import 'package:flutter/material.dart';

import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class FeatureSectionTwo extends StatelessWidget {
  const FeatureSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 2200,
      // width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.network(
                "images/design 1.png",
                height:AppSize.s380,

              ),
            ],
          ),
          SizedBox(height: AppSize.s308,),
          Padding(
            padding: const EdgeInsets.only(left:250,top: 280),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                        AppString.dreamIt,
                        textAlign: TextAlign.start,
                        style:  FeatureSubHomeConstant.featuresubHomeTextStyle
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height:AppSize.s20,),
          /// Base Image
          Padding(
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/15,top:300,),
            child: Row(
              children: [
                Image.network(
                  "images/Rectangle 682.png",
                  // height: 935,
                  height:AppSize.s636,
                  width: MediaQuery.of(context).size.width/1.6,
                ),
              ],
            ),
          ),
          ///rectangle
          Padding(
            padding: const EdgeInsets.only(left:190, top:400),
            child: Image.network(
              'images/Rectangle 677.png',
              // height: 1050,
              height: AppSize.s780,
              width: MediaQuery.of(context).size.width/1.7,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:20,top: 500,right: 410),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'images/inverted_start_white.png',
                  height:AppSize.s200,
                  width: MediaQuery.of(context).size.width/3,
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/4.3,top: AppPadding.p430),
            child: Text(AppString.featureTxt,
                style:FeatureLongTxtConstant.featurelongTextStyle
            ),
          ),
          // SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:500,top:550),
            child: Row(
              children: [
                Image.network(
                  'images/inverted_end_white.png',
                  height:AppSize.s200,
                  width: MediaQuery.of(context).size.width/3,

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
