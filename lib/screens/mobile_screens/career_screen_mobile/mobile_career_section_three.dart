import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileCareerSectionThree extends StatelessWidget {
  const MobileCareerSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///bg image
        Image.asset(
          'images/background.png',
          fit: BoxFit.fill,
          height: 300,
          width:400,
        ),

        ///txt
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 40),
          child: Text('Why Binyuga.Pvt.Ltd.',
              style: TextStyle(fontSize:19,
                fontWeight: FontWeightManager.bold,
                color: ColorManager.white,)),
        ),

        Padding(
          padding:
          EdgeInsets.only(left: MediaQuery.of(context).size.width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "images/woman.png",
                height: 355,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
              SizedBox(
                height: 100,
                child: VerticalDivider(
                  width: MediaQuery.of(context).size.width / 12,
                  color: ColorManager.lightBlue,
                  thickness: 2,
                ),
              ),
              Text(
                AppString.loremTxt,
                style: CareerPageConstant.careerTextStyle(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
