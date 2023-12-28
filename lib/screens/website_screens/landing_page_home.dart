import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/constant_screens/website_constant/description_page_constant.dart';
import '../../responsive_screen/responsive_scr.dart';
import '../constant_screens/website_constant/bottom_nav_bar.dart';
import '../mobile_screens/home_screen_mobile/mobile_home_section_five.dart';
import '../mobile_screens/home_screen_mobile/mobile_home_section_four.dart';
import '../mobile_screens/home_screen_mobile/mobile_home_section_one.dart';
import '../mobile_screens/home_screen_mobile/mobile_home_section_six.dart';
import '../mobile_screens/home_screen_mobile/mobile_home_section_three.dart';
import '../mobile_screens/home_screen_mobile/mobile_home_section_two.dart';
import 'home_page_screens/home_section_five.dart';
import 'home_page_screens/home_section_four.dart';
import 'home_page_screens/home_section_one.dart';
import 'home_page_screens/home_section_six.dart';
import 'home_page_screens/home_section_three.dart';
import 'home_page_screens/home_section_two.dart';

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
      Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          color: Colors.white, child: MobileHomeSectionOne())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container(child: MobileHomeSectionTwo())),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1, child: Container(child: MobileHomeSectionThree())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container(child: MobileHomeSectionFour())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container(child: MobileHomeSectionFive())),
                ],
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container(child: MobileHomeSectionSix())),
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
