import 'package:flutter/material.dart';

import '../presentation/color_manager.dart';
import 'features_screens/features_section_one.dart';
import 'features_screens/features_section_three.dart';
import 'features_screens/features_section_two.dart';

class FeaturesHomeScreen extends StatelessWidget {
  const FeaturesHomeScreen({super.key});

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
                        child: Center(child: FeatureSectionOne()),
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
                        child: Center(child:FeatureSectionTwo()),
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
                        child: Center(child: FeatureSectionThree()),
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
