///start page code
import 'package:flutter/material.dart';

import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class HomeSectionOne extends StatelessWidget {
  const HomeSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Base Image
        Image.network(
          'images/team_member_bg.png',
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height/0.85,
          //width: MediaQuery.of(context).size.width/0.9,
          width: 1600,
        ),
        ///boy img
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/1,top: AppPadding.p100),
          child: Image.network(
            "images/boy.png",
            height: AppSize.s870,
            // height: MediaQuery.of(context).size.height/1,
           // width: MediaQuery.of(context).size.width /1.5,
            width: 780,
            //alignment: Alignment.bottomLeft,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: AppPadding.p150,left: MediaQuery.of(context).size.width/40),
          child: Row(
            children: [
              ///sidebar
              Padding(
                padding:  EdgeInsets.only(top: AppPadding.p150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Text(
                          AppString.whoWeAre,
                          style: HomeScreen.sidebarTextStyle
                      ),
                    ),
                    SizedBox(height: AppSize.s50,),
                    GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => WhatWeDoScreen()),);
                      },
                      child: Text(
                          AppString.whatWeDo,
                          style: HomeScreen.sidebarTextStyle
                      ),
                    ),
                    SizedBox(height: AppSize.s50,),
                    GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => FeaturePageScreen()),);
                      },
                      child: Text(
                          AppString.features,
                          style: HomeScreen.sidebarTextStyle
                      ),
                    ),
                    SizedBox(height: AppSize.s50,),
                    GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => CareerPageScreen()),);
                      },
                      child: Text(
                          AppString.career,
                          style: HomeScreen.sidebarTextStyle
                      ),
                    ),
                    SizedBox(height: AppSize.s50,),
                    GestureDetector(
                      onTap: (){},
                      child: Text(
                          AppString.portfolio,
                          style: HomeScreen.sidebarTextStyle
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width/6,),
              /// txt, button
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/70,),
                  Text(
                      AppString.homesTxt1,
                      style: AllScreensConstant.customTextStyle(
                         // MediaQuery.of(context).size.width/30,
                        58,
                          FontWeightManager.bold,
                          ColorManager.white)
                  ),
                  SizedBox(height: AppSize.s20,),
                  ///homet xt 2
                  Text(
                      AppString.homesTxt2,
                      textAlign: TextAlign.start,
                      style: AllScreensConstant.customTextStyle(
                          //MediaQuery.of(context).size.width/90,
                        18,
                          FontWeightManager.medium,
                          ColorManager.lightBlue)
                  ),
                  const SizedBox(height: AppSize.s100,),
                  ///button
                  MaterialButton(
                    color: ColorManager.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    onPressed: () {},
                    child:  Padding(
                      padding: EdgeInsets.symmetric(vertical: AppPadding.p10, horizontal: MediaQuery.of(context).size.width/60),
                      child: Text(
                        AppString.exploreMore,
                        style: RButtonTheme.roundedButtonTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        ///divider
        Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Container(
            height: MediaQuery.of(context).size.height/4.2,
            child: VerticalDivider(
              width: MediaQuery.of(context).size.width/2.2,
              color: ColorManager.lightBlue,
              thickness: 4,
            ),
          ),
        ),
        SizedBox(height: AppSize.s20,),
        ///side 3 icons
        Padding(
          padding:  EdgeInsets.only(top: AppPadding.p650,right: MediaQuery.of(context).size.width/40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.chevron_right,
                    color: ColorManager.lightBlue,
                    size: MediaQuery.of(context).size.width/30,),
                  SizedBox(height: AppSize.s20,),
                  Icon(Icons.pause,
                    color: ColorManager.lightBlue,
                    size: MediaQuery.of(context).size.width/40, // Original size
                  ),
                  SizedBox(height: AppSize.s20,),
                  Icon(Icons.keyboard_arrow_left,
                    color: ColorManager.lightBlue,
                    size: MediaQuery.of(context).size.width/30,),
                ],
              ),
            ],
          ),
        ),
        /// Binyuga logo
        Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
                child: Image.asset(
                  'images/binyuga_logo.png',
                ),
              ),
            ],
          ),
        ),
        /// Contact us, search
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.width / 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              /// Contact us
              Text(
                AppString.contactUs,
                style: TextStyle(
                  color: ColorManager.white,
                  fontSize: MediaQuery.of(context).size.width / 70,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 22),
              Image.asset(
                'images/toggle_bg.png',
                color:Color(0xff27C9B2),
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 18,
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 50),
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 80),
                child: Image.asset(
                  'images/search.png',
                  width: MediaQuery.of(context).size.width / 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
