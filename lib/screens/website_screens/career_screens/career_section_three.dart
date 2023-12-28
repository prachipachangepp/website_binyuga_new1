import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class CareerSectionThree extends StatelessWidget {
  const CareerSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///bg image
        Image.network(
          'images/background.png',
          fit: BoxFit.fill,
          height: AppSize.s750,
          width: MediaQuery.of(context).size.width,
        ),

        ///txt
        Padding(
          padding: EdgeInsets.only(
            top: AppPadding.p100,
            left: MediaQuery.of(context).size.width / 10,
          ),
          child: Text('Why Binyuga.Pvt.Ltd.',
              style: AllScreensConstant.customTextStyle(
                  MediaQuery.of(context).size.width / 33,
                  FontWeightManager.bold,
                  ColorManager.white)),
        ),

        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                "images/woman.png",
                height: AppSize.s855,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
              SizedBox(
               height: MediaQuery.of(context).size.height / 4,
                child: VerticalDivider(
                  width: MediaQuery.of(context).size.width / 12,
                  color: ColorManager.lightBlue,
                  thickness: 4,
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
