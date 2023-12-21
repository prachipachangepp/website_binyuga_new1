import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_one.dart';
import '../../main.dart';
import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class WWDSectionOne extends StatelessWidget {
  const  WWDSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s870,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Background Image
          Image.network(
            'images/what_we_do_home.png',
            fit: BoxFit.fill,
            height: AppSize.s720,
            width: MediaQuery.of(context).size.width,
          ),

          /// Content Column
          Padding(
            padding: const EdgeInsets.only(top: 30.0,left: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Elevating Success with\nInnovative Tech',
                  style: AllScreensConstant.customTextStyle(FontSize.s50, FontWeightManager.bold, ColorManager.white),
                ),
                SizedBox(height: AppSize.s20,),
                Text(
                  'Our company harnesses cutting-edge technologies and\nstrategic IT solutions to empower business. We believe that\ninnovation and technology are the driving forces behind\nsuccess in the digital age. ',
                  style: AllScreensConstant.customTextStyle(
                      FontSize.s17,
                      //  MediaQuery.of(context).size.width/89,
                      FontWeightManager.medium,
                      ColorManager.lightBlue),
                ),
                SizedBox(height: AppSize.s80,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomeSectionOne()),);
                    // Button action
                  },
                  child: Text(
                    AppString.letsTalk,
                    style: TextStyle(fontSize: FontSize.s15,
                        letterSpacing: -0.011,
                        color: ColorManager.black,
                        fontFamily: FontConstants.fontFamily1),
                  ),
                ),
              ],
            ),
          ),

          ///Image on the right side
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/2.5,top: MediaQuery.of(context).size.height/7),
            child: Image.network(
              'images/digital_innovation.png',
              width: AppSize.s870,
              height: 700,
            ),
          ),
        ],
      ),
    );
  }
}
