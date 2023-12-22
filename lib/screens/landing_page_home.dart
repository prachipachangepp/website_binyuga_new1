// import 'package:flutter/material.dart';
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned.fill(
//             child: Image.asset(
//               'images/Group 220.png', // Replace with the path to your image asset
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           // Your content goes here
//           Positioned(
//             top: 10,
//             left: 0,
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Image.asset(
//                       'images/binyuga_logo.png',
//
//                     ),
//                     VerticalDivider(
//                       color:Colors.blue,
//                       thickness:2,
//                       indent:300,
//                       endIndent:300,
//                     ),
//                     SizedBox(height: 60,),
//                     Text('Who we are',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.white,
//                     ),),
//                     SizedBox(height: 30,),
//                     Text('What we do',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                     SizedBox(height: 35,),
//                     Text('Features',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                     SizedBox(height: 35,),
//                     Text('Career',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                     SizedBox(height: 35,),
//                     Text('Portfolio',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//
//
//                   ],
//
//                 ),
//
//
//
//
//                 SizedBox(width:20,),
//                 Text('Contacts',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),),
//                 SizedBox(width: 20,),
//                 Icon(Icons.toggle_off_sharp,color: Colors.white,size: 30,),
//                 SizedBox(width: 20,),
//                 Icon(Icons.search_outlined,color: Colors.white,),
//               ],
//             ),
//           ),
//         ],
//       ),
//
//
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_five.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_four.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_one.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_six.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_three.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_two.dart';
import '../responsive_screen/responsive_scr.dart';
import 'constant_screens/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: webBody(),
        tablet: webBody(),
        desktop: webBody(),
      ),
    );
  }
}

Widget webBody() {
  final headerKey = GlobalKey();
  final portfolioSectionKey = GlobalKey(debugLabel: "portfolio");
  final ScrollController _controller = ScrollController();

  void _animateToIndex(int index, double _height) {
    _controller.animateTo(
      index * _height,
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  Size screenWidth;
  return LayoutBuilder(builder: (context, constraints) {
    screenWidth = MediaQuery.of(context).size;
    List<Widget> body = [
      // Stack(
      //   children: [
      //     // HeaderSection(
      //     //   screenWidth: screenWidth,
      //     //   key: headerKey,
      //     // ),
      //     Row(
      //       children: [
      //         Expanded(flex: 1, child: Container()),
      //         //th
      //         Expanded(
      //             flex: 2,
      //             child: Container(
      //               margin: EdgeInsets.symmetric(
      //                   vertical: MediaQuery.of(context).size.width / 30,
      //                   horizontal: MediaQuery.of(context).size.width / 40),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   const SizedBox(
      //                     width: 10,
      //                   ),
      //                   InkWell(
      //                       child: Text(
      //                         "About us",
      //                         style: GoogleFonts.fredoka(
      //                             color: Colors.black,
      //                             fontWeight: FontWeight.w500,
      //                             fontSize:
      //                             MediaQuery.of(context).size.width / 75),
      //                       ),
      //                       // We will jump to the bottom of the list
      //
      //                       onTap: () {
      //                         _animateToIndex(1, screenWidth.height);
      //                       }),
      //                   InkWell(
      //                     onTap: () {
      //                       _animateToIndex(2, screenWidth.height);
      //                     },
      //                     child: Text(
      //                       "Services",
      //                       style: GoogleFonts.fredoka(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w500,
      //                           fontSize:
      //                           MediaQuery.of(context).size.width / 75),
      //                     ),
      //                   ),
      //                   InkWell(
      //                     onTap: () {
      //                       _animateToIndex(3, screenWidth.height);
      //                     },
      //                     child: Text(
      //                       "Portfolio",
      //                       style: GoogleFonts.fredoka(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w500,
      //                           fontSize:
      //                           MediaQuery.of(context).size.width / 75),
      //                     ),
      //                   ),
      //                   InkWell(
      //                     onTap: () {
      //                       _animateToIndex(4, screenWidth.height);
      //                     },
      //                     child: Text(
      //                       "Workshop & Training",
      //                       style: GoogleFonts.fredoka(
      //                           color: Colors.black,
      //                           fontWeight: FontWeight.w500,
      //                           fontSize:
      //                           MediaQuery.of(context).size.width / 75),
      //                     ),
      //                   ),
      //                   MaterialButton(
      //                       elevation: 4,
      //                       color: const Color(0xffFFFFFF),
      //                       padding: EdgeInsets.symmetric(
      //                           horizontal:
      //                           MediaQuery.of(context).size.width / 40,
      //                           vertical:
      //                           MediaQuery.of(context).size.width / 120),
      //                       shape: RoundedRectangleBorder(
      //                           borderRadius: BorderRadius.circular(30)),
      //                       onPressed: () {
      //                         _animateToIndex(5, screenWidth.height);
      //                       },
      //                       child: ShaderMask(
      //                         shaderCallback: (Rect bounds) {
      //                           return const LinearGradient(
      //                             colors: [
      //                               Color(0xffAA1056),
      //                               Color(0xff210B32)
      //                             ],
      //                           ).createShader(bounds);
      //                         },
      //                         child: Text(
      //                           "Contact Us",
      //                           style: TextStyle(
      //                             fontWeight: FontWeight.w700,
      //                             fontSize:
      //                             MediaQuery.of(context).size.width / 75,
      //                             color:  Colors.black,
      //                           ),
      //                         ),
      //                       )),
      //                 ],
      //               ),
      //             ))
      //       ],
      //     ),
      //   ],
      // ),
      //  const AboutUsSection(),

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
                          child: HomeSectionOne())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(child: HomeSectionTwo())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(child: HomeSectionThree())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(child: HomeSectionFour())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(child: HomeSectionFive())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(child: HomeSectionSix())),
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
        controller: _controller,
        itemCount: body.length,
        itemBuilder: (context, index) {
          return body[index];
        });
  });
}