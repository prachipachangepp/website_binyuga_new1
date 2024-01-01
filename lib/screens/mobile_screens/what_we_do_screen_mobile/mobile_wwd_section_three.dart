// import 'package:flutter/material.dart';
// import 'package:website_binyuga_new1/presentation/value_manager.dart';
// import '../../constant_screens/website_constant/explore_screen_image_btn_constant.dart';
//
// class MobileWWDSectionThree extends StatefulWidget {
//   const MobileWWDSectionThree({super.key});
//
//   @override
//   State<MobileWWDSectionThree> createState() => _MobileWWDSectionThreeState();
// }
//
// class _MobileWWDSectionThreeState extends State<MobileWWDSectionThree> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       height: AppSize.s780,
//       child: Stack(
//         children: [
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ImageWithButtonStack(
//                       imageUrl: 'images/rectangle.png',
//                       buttonText: 'Software Development',
//                       onPressed: () {}),
//                   ImageWithButtonStack(
//                       imageUrl: 'images/rectangle.png',
//                       buttonText: 'Application Development',
//                       onPressed: () {}),
//                 ],
//               ),
//               const SizedBox(
//                 height: AppSize.s50,
//               ),
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //   children: [
//               //     ImageWithButtonStack(
//               //         imageUrl: 'images/wd.png',
//               //         buttonText: 'Web Development',
//               //         onPressed: () {}),
//               //     ImageWithButtonStack(
//               //         imageUrl: 'images/ui.png',
//               //         buttonText: 'Ui/UX Designing',
//               //         onPressed: () {}),
//               //
//               //   ],
//               // ),
//               // Row(
//               //   children: [
//               //     ImageWithButtonStack(
//               //         imageUrl: 'images/cm.png',
//               //         buttonText: 'Career Mentoring',
//               //         onPressed: () {}),
//               //     ImageWithButtonStack(
//               //         imageUrl: 'images/ps.png',
//               //         buttonText: 'Problem Solving',
//               //         onPressed: () {})
//               //   ],
//               // )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';
import 'package:website_binyuga_new1/presentation/theme_manager.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';

class MobileWWDSectionThree extends StatefulWidget {
  const MobileWWDSectionThree({super.key});

  @override
  State<MobileWWDSectionThree> createState() => _MobileWWDSectionThreeState();
}

class _MobileWWDSectionThreeState extends State<MobileWWDSectionThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: AppSize.s780,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppConstants.imagePath1,
                              //   width: MediaQuery.of(context).size.width /5,
                              height: 110,
                            ),
                            SizedBox(
                              width: 165,
                              height: 25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      //   side: BorderSide(color: Colors.white),
                                    ))),
                                onPressed: () {},
                                child: Text(
                                  AppConstants.buttonText1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppConstants.imagePath2,
                          // width:   MediaQuery.of(context).size.width /5,
                          height: 110,
                        ),
                        SizedBox(
                          width: 169,
                          height: 25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      //   side: BorderSide(color: Colors.white),
                                    ))),
                            onPressed: () {},
                            child: Text(
                              AppConstants.buttonText2,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppConstants.imagePath3,
                              //  width: MediaQuery.of(context).size.width /5,
                              height: 110,
                            ),
                            SizedBox(
                              width: 165,
                              height: 25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,
                                          //   side: BorderSide(color: Colors.white),
                                        ))),
                                onPressed: () {},
                                child: Text(
                                  AppConstants.buttonText3,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppConstants.imagePath4,
                          //   width:   MediaQuery.of(context).size.width /5,
                          height: 110,
                        ),
                        SizedBox(
                          width: 165,
                          height: 25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      //   side: BorderSide(color: Colors.white),
                                    ))),
                            onPressed: () {},
                            child: Text(
                              AppConstants.buttonText4,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppConstants.imagePath5,
                              //   width: MediaQuery.of(context).size.width /5,
                              height: 110,
                            ),
                            SizedBox(
                              width: 165,
                              height: 25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,
                                          //   side: BorderSide(color: Colors.white),
                                        ))),
                                onPressed: () {},
                                child: Text(
                                  AppConstants.buttonText5,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppConstants.imagePath6,
                          //  width:   MediaQuery.of(context).size.width /5,
                          height: 110,
                        ),
                        SizedBox(
                          width: 165,
                          height: 25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      //   side: BorderSide(color: Colors.white),
                                    ))),
                            onPressed: () {},
                            child: Text(
                              AppConstants.buttonText6,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
