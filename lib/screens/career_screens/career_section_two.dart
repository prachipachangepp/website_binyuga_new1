// import 'package:flutter/material.dart';
//
// import '../../presentation/color_manager.dart';
// import '../../presentation/font_manager.dart';
// import '../../presentation/string_manager.dart';
// import '../../presentation/theme_manager.dart';
// import '../../presentation/value_manager.dart';
//
// class CareerSubHomePage extends StatelessWidget {
//   const CareerSubHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(
//         children: [
//
//       Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top:140),
//             child: Text(AppString.sculptYour,
//               style: WhatWeDoSubPageConstant.subHomeTextStyle(context)
//
//               ),
//             ),
//         ],
//       ),
//       Padding(
//           padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/10,bottom:10,),
//           child: Row(
//             children: [
//               Image.network(
//                 'images/Rectangle 677.png',
//
//                 height: 500,
//                 width: MediaQuery.of(context).size.width/1.8,
//               ),
//             ],
//           ),
//         ),
//         ///rectangle
//         Padding(
//           padding: const EdgeInsets.only(left:200, top:220),
//           child: Image.network(
//
//             "images/Rectangle 682.png",
//             height: 635,
//             width: MediaQuery.of(context).size.width/2,
//           ),
//         ),
//
//         Padding(
//           padding: const EdgeInsets.only(top: 320,right: 400),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.network(
//                 'images/inverted_start.png',
//                 height: 200,
//                 width: MediaQuery.of(context).size.width/3,
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(left: 280,top: 415),
//           child: Text(
//             AppString.weBelieveIn,
//               style: AllScreensConstant.customTextStyle(FontSize.s30,
//                 FontWeightManager.medium,ColorManager.white,)),
//         ),
//         // SizedBox(height: 20,),
//         Padding(
//           padding: const EdgeInsets.only(left:500,top:520),
//           child: Row(
//             children: [
//               Image.network(
//                 'images/inverted_end.png',
//                 height: 200,
//                 width: MediaQuery.of(context).size.width/3,
//
//               ),
//             ],
//           ),
//         ),
//     ],),);
//   }
// }


import 'package:flutter/material.dart';
import '../../presentation/value_manager.dart';

import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';

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
                padding: const EdgeInsets.only(top: AppPadding.p150, left: AppPadding.p30),
                child: Text(AppString.sculptYour,
                    style: WhatWeDoSubPageConstant.subHomeTextStyle(context)),
              ),
            ],
          ),

          /// Base Image
          Padding(
            padding: EdgeInsets.only(left: AppPadding.p130, top: AppPadding.p250,),
            child: Row(
              children: [
                Image.network(
                  'images/Rectangle 677.png',
                  height: AppSize.s635,
                  width: MediaQuery.of(context).size.width / 1.8,
                ),
              ],
            ),
          ),

          ///rectangle
          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/7.5, top: AppPadding.p280),
            child: Image.network(
              "images/Rectangle 682.png",

              height: AppSize.s780,
              width: MediaQuery.of(context).size.width / 1.7,
            ),
          ),

          ///inverted comma start
          Padding(
            padding: const EdgeInsets.only(top: 350,),
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
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/5, top: AppPadding.p430),
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
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/3 , top: 630),
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
