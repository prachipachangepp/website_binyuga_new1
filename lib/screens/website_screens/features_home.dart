import 'package:flutter/material.dart';
import '../constant_screens/mobile_constant/description_page_constant_mobile.dart';
import '../constant_screens/website_constant/bottom_nav_bar.dart';
import '../constant_screens/website_constant/description_page_constant.dart';
import '../constant_screens/website_constant/responsive_app_bar.dart';
import 'features_screens/features_section_one.dart';
import 'features_screens/features_section_three.dart';
import 'features_screens/features_section_two.dart';

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
        appBar: const PreferredSize(
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
                                Container(child: DescriptionScreenConstantMobile(),)),
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
