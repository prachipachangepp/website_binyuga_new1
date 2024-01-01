import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
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
          height: AppSize.s300,
          width: AppSize.s400,
        ),

        ///txt
        Padding(
          padding: const EdgeInsets.only(left: AppPadding.p20, top: AppPadding.p40),
          child: Text('Why Binyuga.Pvt.Ltd.',
              style: CareerWhyTxtConstant.careerwhyTextStyle(context)),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p20),
              child: Image.asset(
                "images/woman.png",
                height: AppSize.s355,
                width: MediaQuery.of(context).size.width / 2.5,
              ),
            ),
            SizedBox(
              height: AppSize.s130,
              child: VerticalDivider(
                width: MediaQuery.of(context).size.width / 11.5,
                color: ColorManager.lightBlue,
                thickness: 2,
              ),
            ),
            Text(AppString.loremTxt,
                style: CareerLoremTxtConstant.careerloremTextStyle(context)),
          ],
        ),
      ],
    );
  }
}
