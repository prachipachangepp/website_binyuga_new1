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
              itemCount: body.length,
              itemBuilder: (context, index) {
                return body[index];
              });
        }));
  }
}
