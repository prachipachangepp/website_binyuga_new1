import 'package:flutter/material.dart';
import '../../presentation/value_manager.dart';
import '../constant_screens/website_constant/bottom_nav_bar.dart';
import '../constant_screens/website_constant/description_page_constant.dart';
import '../constant_screens/website_constant/responsive_app_bar.dart';
import 'career_screens/career_section_four.dart';
import 'career_screens/career_section_one.dart';
import 'career_screens/career_section_three.dart';
import 'career_screens/career_section_two.dart';


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
                height:  AppSize.s900,
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
