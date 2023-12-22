import 'package:flutter/material.dart';

import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';

class CareerSectionThree extends StatelessWidget {
  const CareerSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Image.network(
            'images/bckground.png',
            fit: BoxFit.fill,
            height: 750,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width / 25,
              left: MediaQuery.of(context).size.width / 10,
            ),
            child: Text(
                'Why Binyuga.Pvt.Ltd.',
                style: AllScreensConstant.customTextStyle(FontSize.s46,
                    FontWeightManager.bold, ColorManager.white)


            ),
          ),
          //  SizedBox(height:60,),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 10,
              left: MediaQuery.of(context).size.width / 10,

            ),
            child: Row(

              children: [
                Image.network(
                  "images/woman.png",
                  height: 800,
                  width: MediaQuery.of(context).size.width/3.5,
                  // width:200,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: VerticalDivider(
                      width: MediaQuery.of(context).size.width / 2.2,
                      color: ColorManager.lightBlue,
                      thickness: 4,
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(
                    // right: MediaQuery.of(context).size.width / 50,
                    right: MediaQuery.of(context).size.width / 0.1,
                    top: MediaQuery.of(context).size.height / 80,
                  ),
                  //   bottom:MediaQuery.of(context).size.height/3.5),
                  child: Text(AppString.loremTxt,

                    style: CareerPageConstant.careerTextStyle,

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
