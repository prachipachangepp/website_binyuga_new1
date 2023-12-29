import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/bottom_nav_bar_mobile.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/description_page_constant_mobile.dart';
import '../../presentation/value_manager.dart';
import '../constant_screens/website_constant/bottom_nav_bar.dart';
import '../constant_screens/website_constant/description_page_constant.dart';
import '../constant_screens/website_constant/responsive_app_bar.dart';
import 'career_screen_mobile/mobile_career_section_four.dart';
import 'career_screen_mobile/mobile_career_section_one.dart';
import 'career_screen_mobile/mobile_career_section_three.dart';
import 'career_screen_mobile/mobile_career_section_two.dart';



class MobileCareerHomeScreen extends StatelessWidget {
  const MobileCareerHomeScreen({super.key});

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
                height: 300,
                color: Colors.purple,
                child: const MobileCareerSectionOne(),
              ),
              Container(
                height:  300,
                child: const MobileCareerSectionTwo(),
              ),
              Container(
                height: 350,
                child: const MobileCareerSectionThree(),
              ),

              Container(
                height: AppSize.s900,
                child: const MobileCareerSectionFour(),
              ),
              Container(
                height:  AppSize.s800,
                child: const DescriptionScreenConstantMobile(),
              ),
              Row(
                children:[
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                    child: const BottomNavBarScreenMobile(),
                  ),
                ),]
              )
            ],
          ),
        ],
      ),
    );
  }
}
