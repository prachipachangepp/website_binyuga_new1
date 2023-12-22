// import 'package:flutter/material.dart';
// import 'package:website_binyuga_new1/screens/career_screens/career_section_three.dart';
// import 'package:website_binyuga_new1/screens/constant_screens/responsive_app_bar.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_six.dart';
//
// import '../presentation/color_manager.dart';
// import 'career_screens/career_section_four.dart';
// import 'career_screens/career_section_one.dart';
// import 'career_screens/career_section_two.dart';
// import 'constant_screens/bottom_nav_bar.dart';
// import 'constant_screens/description_page_constant.dart';
//
// class CareerHomeScreen extends StatelessWidget {
//   const CareerHomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: const PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//           child: ResponsiveAppBar(),),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           bool isWideScreen = constraints.maxWidth > 1200;
//           return SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: SingleChildScrollView(
//               scrollDirection: isWideScreen ? Axis.vertical : Axis.horizontal,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 870,
//                         color: ColorManager.white,
//                         child: Center(child: CareerSectionOne()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 800,
//                         child: Center(child: CareerSectionTwo()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1536,
//                         height: 900,
//                         child: Center(child: CareerSectionThree()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                       children: [
//                   Container(
//                   width: isWideScreen
//                   ? MediaQuery.of(context).size.width
//                       : 1536,
//                   height: 1300,
//                   child: Center(child: CareerSectionFour()),
//           ),
//                 ],
//               ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1536,
//                         height: 800,
//                         child: Center(child: DescriptionScreenConstant()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1536,
//                         height: 187,
//                         child: Center(child: BottomNavBarScreen()),
//                       ),
//                     ],
//                   ),
//            ], ),
//             ), );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_four.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_one.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_three.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_two.dart';

import 'constant_screens/bottom_nav_bar.dart';
import 'constant_screens/description_page_constant.dart';
import 'constant_screens/responsive_app_bar.dart';


class CareerHomeScreen extends StatelessWidget {
  const CareerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ResponsiveAppBar(),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
//               Container(
//                   height: 1000,
// // width:MediaQuery.of(context).size.width,
//                   color: Colors.pink,
//                   child: WWDStartScreen()),
//               Container(
//                 height: 1500,
//                 //color: Colors.red,
//                 child: (),
//               ),
              Container(
                height: 900,
                color: Colors.purple,
                child: CareerSectionOne(),
              ),
              Container(
                height: 1200,
                //  color: Colors.blueGrey,
                child: CareerSectionTwo(),
              ),

              Container(
                height: 900,
                color: Colors.blue,
                child: CareerSectionThree(),
              ),

              Container(
                height: 1300,
                color: Colors.orange,
                child: CareerSectionFour(),
              ),
              Container(
                height: 800,
                color: Colors.grey,
                child: DescriptionScreenConstant(),
              ),
              Container(
                height: 187,
                child: const BottomNavBarScreen(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
