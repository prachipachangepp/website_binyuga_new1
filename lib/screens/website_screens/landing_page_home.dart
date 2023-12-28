import 'package:flutter/material.dart';
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
        mobile: mobileBody(),
        tablet: webBody(),
        website: webBody(),
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
      Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          color: Colors.white, child: HomeSectionOne())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container(child: HomeSectionTwo())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1, child: Container(child: HomeSectionThree())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 3, child: Container(child: HomeSectionFour())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 3, child: Container(child: HomeSectionFive())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container(child: HomeSectionSix())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 3, child: Container(child: BottomNavBarScreen())),
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

Widget mobileBody() {
  // final headerKey = GlobalKey();
  // final portfolioSectionKey = GlobalKey(debugLabel: "portfolio");
  final ScrollController _controller = ScrollController();
  //
  // void _animateToIndex(int index, double _height) {
  //   _controller.animateTo(
  //     index * _height,
  //     duration: Duration(seconds: 2),
  //     curve: Curves.fastOutSlowIn,
  //   );
  // }
  //
  Size screenWidth;
  return LayoutBuilder(builder: (context, constraints) {
    screenWidth = MediaQuery.of(context).size;
    List<Widget> body = [
      Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.red),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 200,
                      // width: 200,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.green),
                ],
              ),
              Row(
                children: [
                  Container(height: 200, width: 200, color: Colors.red),
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
