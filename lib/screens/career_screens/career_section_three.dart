import 'package:flutter/material.dart';

import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';

class CareerSectionThree extends StatelessWidget {
  const CareerSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///bg image
        Image.network(
          'images/bckground.png',
          fit: BoxFit.fill,
          height: 750,
          width: MediaQuery.of(context).size.width,
        ),
        ///txt
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: MediaQuery.of(context).size.width / 10,
          ),
          child: Text(
              'Why Binyuga.Pvt.Ltd.',

              style: AllScreensConstant.customTextStyle(FontSize.s46,
                  FontWeightManager.bold, ColorManager.white)


          ),
        ),
        //SizedBox(height:60,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Image.network(
            "images/woman.png",
            height: 800,
            width: MediaQuery.of(context).size.width/3.2,
            // width:200,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            child: VerticalDivider(
              width: MediaQuery.of(context).size.width / 5,
              color: ColorManager.lightBlue,
              thickness: 4,
            ),
          ),
          Column(children: [],),
        ],
        ),
      ],
    );
  }
}
