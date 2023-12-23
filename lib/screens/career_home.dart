import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_four.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_one.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_three.dart';
import 'package:website_binyuga_new1/screens/career_screens/career_section_two.dart';
import '../presentation/value_manager.dart';
import 'constant_screens/bottom_nav_bar.dart';
import 'constant_screens/description_page_constant.dart';
import 'constant_screens/responsive_app_bar.dart';


class CareerHomeScreen extends StatelessWidget {
  const CareerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: ResponsiveAppBar(),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Container(
                height: AppSize.s900,
                color: Colors.purple,
                child: const CareerSectionOne(),
              ),
              Container(
                height:  AppSize.s1200,
                child: const CareerSectionTwo(),
              ),

              Container(
                height: AppSize.s1000,
                child: const CareerSectionThree(),
              ),

              Container(
                height: AppSize.s1300,
                child: const CareerSectionFour(),
              ),
              Container(
                height:  AppSize.s800,
                child: const DescriptionScreenConstant(),
              ),
              Container(
                height:  AppSize.s187,
                child: const BottomNavBarScreen(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
