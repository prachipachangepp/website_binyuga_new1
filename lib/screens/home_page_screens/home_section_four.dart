// import 'package:flutter/material.dart';
//
// import '../../../presentation/color_manager.dart';
// import '../../../presentation/font_manager.dart';
// import '../../../presentation/string_manager.dart';
// import '../../../presentation/theme_manager.dart';
//
// class HomeSectionFour extends StatefulWidget {
//   const HomeSectionFour({super.key});
//
//   @override
//   State<HomeSectionFour> createState() => _HomeSectionFourState();
// }
//
// class _HomeSectionFourState extends State<HomeSectionFour> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           ///txt about us
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top:40,right: 300),
//                 child: Text(AppString.aboutUs1,
//                     style: AllScreensConstant.customTextStyle(
//                         FontSize.s60,
//                         FontWeightManager.bold,
//                         ColorManager.darkBlue
//                     )
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 30,),
//           Text(
//               AppString.everyYear,
//               textAlign: TextAlign.center,
//               style:AllScreensConstant.customTextStyle(
//                   MediaQuery.of(context).size.width/38,
//                   FontWeightManager.bold,
//                   ColorManager.black)
//
//           ),
//           SizedBox(height: 30,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(top:30,left: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'OOO',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: MediaQuery.of(context).size.width/10,
//                           fontFamily: FontConstants.fontFamily1,
//                           color: ColorManager.skyBlue),
//                     ),
//                     SizedBox(height: 8,),
//                     Text(
//                         AppString.successfullyProject,
//                         textAlign: TextAlign.center,
//                         style:AllScreensConstant.customTextStyle(
//                             MediaQuery.of(context).size.width/58,
//                             FontWeightManager.medium,
//                             ColorManager.black)
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 50,),
//               Padding(
//
//                 padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/100,top:30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'OO',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: MediaQuery.of(context).size.width/10,
//                         fontFamily: FontConstants.fontFamily1,
//                         color: ColorManager.skyBlue,
//                       ),
//                     ),
//                     SizedBox(height: 5.0),
//                     Padding(
//                       padding: EdgeInsets.only(bottom:30),
//                       child: Text(
//                           AppString.revenueGrowth,
//                           textAlign: TextAlign.center,
//                           style:AllScreensConstant.customTextStyle(
//                               MediaQuery.of(context).size.width/58,
//                               FontWeightManager.medium,
//                               ColorManager.black)
//
//
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(width: 50,),
//               Padding(
//                 padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width/100,top: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'OOO',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: MediaQuery.of(context).size.width/10,
//                           fontFamily: FontConstants.fontFamily1,
//                           color: ColorManager.skyBlue),
//                     ),
//                     SizedBox(height: 8.0),
//                     Text(
//                         AppString.trainingDays,
//                         textAlign: TextAlign.center,
//                         style:AllScreensConstant.customTextStyle(
//                             MediaQuery.of(context).size.width/58,
//                             FontWeightManager.medium,
//                             ColorManager.black)
//
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 80.0,),
//
//         ],
//       ),
//
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';

class HomeSectionFour extends StatefulWidget {
  const HomeSectionFour({super.key});

  @override
  State<HomeSectionFour> createState() => _HomeSectionFourState();
}

class _HomeSectionFourState extends State<HomeSectionFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ///txt about us
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only (top: MediaQuery.of(context).size.width / 10,
      right: 150),
                child: Text(AppString.aboutUs1,
                    style: AllScreensConstant.customTextStyle(
                        FontSize.s60,
                        FontWeightManager.bold,
                        ColorManager.darkBlue
                    ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right:100),
            child: Text(
                AppString.everyYear,
                textAlign: TextAlign.center,
                style:AllScreensConstant.customTextStyle(
                    MediaQuery.of(context).size.width/38,
                    FontWeightManager.bold,
                    ColorManager.black)

            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top:30,right:200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      'OOO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/10,
                          fontFamily: FontConstants.fontFamily1,
                          color: ColorManager.skyBlue),
                    ),
                    SizedBox(height: 8,),
                    Text(
                        AppString.successfullyProject,
                        textAlign: TextAlign.center,
                        style:AllScreensConstant.customTextStyle(
                            MediaQuery.of(context).size.width/58,
                            FontWeightManager.medium,
                            ColorManager.black)
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: EdgeInsets.only(right:150,top:30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      'OO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/10,
                        fontFamily: FontConstants.fontFamily1,
                        color: ColorManager.skyBlue,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Padding(
                      padding: EdgeInsets.only(bottom:30),
                      child: Text(
                          AppString.revenueGrowth,
                          textAlign: TextAlign.center,
                          style:AllScreensConstant.customTextStyle(
                              MediaQuery.of(context).size.width/58,
                              FontWeightManager.medium,
                              ColorManager.black)


                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Padding(
                padding: EdgeInsets.only(left:100,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OOO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width/10,
                          fontFamily: FontConstants.fontFamily1,
                          color: ColorManager.skyBlue),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                        AppString.trainingDays,
                        textAlign: TextAlign.center,
                        style:AllScreensConstant.customTextStyle(
                            MediaQuery.of(context).size.width/58,
                            FontWeightManager.medium,
                            ColorManager.black)

                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 80.0,),

        ],
      ),

    );
  }
}


