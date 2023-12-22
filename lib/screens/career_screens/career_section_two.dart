import 'package:flutter/material.dart';
import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class CareerSectionTwo extends StatelessWidget {
  const CareerSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1200,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          ///txt 1
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 450, left: 30),
                child: Text(AppString.sculptYour,
                    style: WhatWeDoSubPageConstant.subHomeTextStyle(context)),
              ),
            ],
          ),

          /// Base Image

          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/7.5, top:400),
            child: Row(
              children: [
                Image.network(
                  "images/Rectangle 682.png",
                  height:890,
                  width: MediaQuery.of(context).size.width / 1.7,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding: EdgeInsets.only(left:80, top: 500,),
            child: Row(
              children: [
                Image.network(
                  'images/Rectangle 677.png',
                    height:500,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
              ],
            ),
          ),


          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(top: 500,),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'images/inverted_start_white.png',
                  height: 200,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/5, top:620),
            child: Text(AppString.weSee,
                style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width/50,
                  FontWeightManager.medium,
                  ColorManager.white,
                )),
          ),
          // // SizedBox(height: 20,),
          ///Inverted Comma End
          Padding(
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/3 , top: 830),
            child: Row(
              children: [
                Image.network(
                  'images/inverted_end_white.png',
                  height: 200,
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ],
            ),
          ),

        ]));
  }
}
