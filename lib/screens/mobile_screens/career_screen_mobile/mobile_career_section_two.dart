import 'package:flutter/material.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileCareerSectionTwo extends StatelessWidget {
  const MobileCareerSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSize.s500,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          ///txt 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: AppPadding.p50,
                ),
                child: Text(AppString.sculptYour,
                    style: CareerSculptTextConstant.sculptTextStyle(context)),
              ),
            ],
          ),
          SizedBox(
            height: AppSize.s40,
          ),

          /// Base Image
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p30, top: AppPadding.p10),
                child: Image.asset(
                  "images/Rectangle 682.png",
                  height: AppSize.s636,
                  width: MediaQuery.of(context).size.width / 1.15,
                ),
              ),
            ],
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(
              bottom: AppPadding.p20,
              left: 17,
            ),
            child: Image.asset(
              'images/rectangle.png',
              height: AppSize.s680,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),

          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(left: 35, top: AppPadding.p70),
            child: Image.asset(
              'images/inverted_start_white.png',
              height: AppSize.s200,
              width: MediaQuery.of(context).size.width / 23,
            ),
          ),

          ///txt
          Padding(
            padding: EdgeInsets.only(left: AppPadding.p60, top: AppPadding.p170),
            child: Text(
              MobileAppString.weSee1,
              style: CareerLongTxtConstant.careerlongTextStyle(context),
            ),
          ),

          ///Inverted Comma End
          Padding(
            padding: const EdgeInsets.only(
              left: AppPadding.p130,
              top: AppPadding.p220,
            ),
            child: Image.asset(
              'images/inverted_end_white.png',
              height: AppSize.s200,
              width: MediaQuery.of(context).size.width / 23,
            ),
          ),
        ]));
  }
}
