import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/what_we_do_screens/wwd_section_one.dart';
import 'package:website_binyuga_new1/screens/what_we_do_screens/wwd_section_three.dart';
import 'package:website_binyuga_new1/screens/what_we_do_screens/wwd_section_two.dart';

import 'constant_screens/bottom_nav_bar.dart';
import 'constant_screens/description_page_constant.dart';
import 'constant_screens/responsive_app_bar.dart';

class WhatWeDoHomeScreen extends StatefulWidget {
  const WhatWeDoHomeScreen({super.key});

  @override
  State<WhatWeDoHomeScreen> createState() => _WhatWeDoHomeScreenState();
}

class _WhatWeDoHomeScreenState extends State<WhatWeDoHomeScreen> {
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
                                color: Colors.white, child: WWDSectionOne())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1, child: Container(child: WWDSectionTwo())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(child: WWDSectionThree())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child:
                                Container(child: DescriptionScreenConstant())),
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
        }));
  }
}
