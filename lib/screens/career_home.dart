import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_two.dart';

import '../presentation/color_manager.dart';
import 'career_screens/career_section_one.dart';
import 'career_screens/career_section_three.dart';

class CareerHomeScreen extends StatelessWidget {
  const CareerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWideScreen = constraints.maxWidth > 1200;
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: isWideScreen ? Axis.vertical : Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: isWideScreen
                            ? MediaQuery.of(context).size.width
                            : 1240,
                        height: 970,
                        color: ColorManager.white,
                        child: Center(child: CareerSectionOne()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: isWideScreen
                            ? MediaQuery.of(context).size.width
                            : 1240,
                        height: 500,
                        child: Center(child:CareerSectionTwo()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: isWideScreen
                            ? MediaQuery.of(context).size.width
                            : 1536,
                        height: 2000,
                        child: Center(child:CareerSectionThree()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
