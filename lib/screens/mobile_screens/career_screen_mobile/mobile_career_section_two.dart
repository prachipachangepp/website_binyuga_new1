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
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          ///txt 1
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: MediaQuery.of(context).size.width / 20,
                ),
                child: Text(
                  AppString.sculptYour,
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeightManager.extraBold,
                      color: ColorManager.darkBlue1),
                ),
              ),
            ],
          ),

          /// Base Image

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Image.asset(
                  "images/Rectangle 682.png",
                  height: 310,
                  width: 300,
                ),
              ),
            ],
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(
              top: 60,
              right: 40,
            ),
            child: Image.asset(
              'images/Rectangle 677.png',
              height: 190,
              width: 450,
            ),
          ),

          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: Image.asset(
              'images/inverted_start_white.png',
              height: 200,
              width: MediaQuery.of(context).size.width / 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, top: 105),
            child: Text(
                'We see every journey to success as a work of '
                '\nart,where each decision and effort shapes the'
                '\nway forward. Our mission is to help you carve'
                '\nout your unique route to achievement, providing'
                '\nthe tools,support, and expertise you need to'
                '\nachieve your goals. Just as a sculptor molds'
                '\nclay into a masterpiece, we are here to assist'
                '\nyou in crafting your path towards success.',
                style: TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeightManager.medium,
                  color: ColorManager.white,
                )),
          ),

          ///Inverted Comma End
          Padding(
            padding: const EdgeInsets.only(
              left: 260,
              top: 190,
            ),
            child: Image.asset(
              'images/inverted_end_white.png',
              height: 200,
              width: MediaQuery.of(context).size.width / 20,
            ),
          ),
        ]));
  }
}
