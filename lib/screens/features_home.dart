// import 'package:flutter/material.dart';
//
// import '../presentation/color_manager.dart';
// import 'constant_screens/bottom_nav_bar.dart';
// import 'constant_screens/description_page_constant.dart';
// import 'constant_screens/responsive_app_bar.dart';
// import 'features_screens/features_section_one.dart';
// import 'features_screens/features_section_three.dart';
// import 'features_screens/features_section_two.dart';
//
// class FeaturesHomeScreen extends StatelessWidget {
//   const FeaturesHomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PreferredSize(
//         preferredSize: Size.fromHeight(kToolbarHeight),
//         child: ResponsiveAppBar(),),
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
//                         height: 720,
//                         color: ColorManager.white,
//                         child: Center(child: FeatureSectionOne()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 1300,
//                         child: Center(child:FeatureSectionTwo()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1536,
//                         height: 1150,
//                         child: Center(child: FeatureSectionThree()),
//                       ),
//                     ],
//                   ),
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
//                         height: 200,
//                         child: Center(child: BottomNavBarScreen()),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/constant_screens/description_page_constant.dart';
import 'package:website_binyuga_new1/screens/features_screens/features_section_one.dart';
import 'package:website_binyuga_new1/screens/features_screens/features_section_three.dart';
import 'package:website_binyuga_new1/screens/features_screens/features_section_two.dart';

import 'constant_screens/bottom_nav_bar.dart';
import 'constant_screens/responsive_app_bar.dart';

class FeaturesHomeScreen extends StatefulWidget {
  const FeaturesHomeScreen({super.key});

  @override
  State<FeaturesHomeScreen> createState() => _FeaturesHomeScreenState();
}

class _FeaturesHomeScreenState extends State<FeaturesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenWidth;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ResponsiveAppBar(),
        ),
      body: LayoutBuilder(builder: (context, constraints) {
        screenWidth = MediaQuery.of(context).size;
        List<Widget> body = [
          Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                              color: Colors.white,
                              child: FeatureSectionOne())),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(child: FeatureSectionTwo())),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(child: FeatureSectionThree())),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(child: DescriptionScreenConstant())),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(child: BottomNavBarScreen())),
                    ],
                  ),

                ],
              ),
            ],
          )
        ];

        return ListView.builder(
            shrinkWrap: true,
           // controller: _controller,
            itemCount: body.length,
            itemBuilder: (context, index) {
              return body[index];
            });
      }
      )
    );
  }
}
