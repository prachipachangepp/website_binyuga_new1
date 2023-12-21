import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/what_we_do_screens/wwd_section_one.dart';
import 'package:website_binyuga_new1/screens/what_we_do_screens/wwd_section_three.dart';
import 'package:website_binyuga_new1/screens/what_we_do_screens/wwd_section_two.dart';

import '../presentation/color_manager.dart';

class WhatWeDoHomeScreen extends StatelessWidget {
  const WhatWeDoHomeScreen({super.key});

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
                        child: Center(child: WWDSectionOne()),
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
                        child: Center(child: WWDSectionTwo()),
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
                        child: Center(child: WWDSectionThree()),
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
