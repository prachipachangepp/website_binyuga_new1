import 'package:flutter/material.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../constant_screens/mobile_constant/custom_info_container.dart';

class MobileCareerSectionFour extends StatelessWidget {
  const MobileCareerSectionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/background1.png',
          fit: BoxFit.fill,
          height: AppSize.s400,
          width: MediaQuery.of(context).size.width,
        ),

        ///start txt
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 30,
              ),
              child: Text(AppString.loremTxtM,
                  textAlign: TextAlign.center,
                  style: CareerPageConstant.careerTextStyle(context)),
            ),
          ],
        ),

        ///about us
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppPadding.p190),
              child: Text(AppString.aboutUs,
                  style: CareerAboutTxtConstant.careerAboutTxtStyle(context)),
            ),
          ],
        ),

        ///containers
        Padding(
          padding: const EdgeInsets.only(
              top: AppPadding.p300, left: AppPadding.p20, right:AppPadding.p20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomInfoContainer(text: AppString.ourTxt),
                  SizedBox(width: MediaQuery.of(context).size.width / 20,),
                  const CustomInfoContainer(text: AppString.nationTxt),
                ],
              ),
              const SizedBox(height: AppSize.s30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CustomInfoContainer(text: AppString.diverTxt),
                  SizedBox(width: MediaQuery.of(context).size.width / 20,),
                  const CustomInfoContainer(text: AppString.devlopTxt),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}