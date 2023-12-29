import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../website_screens/landing_page_home.dart';


class MobileCareerSectionOne extends StatelessWidget {
  const MobileCareerSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Stack(
        children: [
          Image.asset(
            'images/background.png',
            fit: BoxFit.fill,
            height: 270,
            width: MediaQuery.of(context).size.width,
          ),
          ///girl image
          Padding(
            padding: const EdgeInsets.only(top:80,left:140),
            child: Image.asset(
              "images/girl_img.png",
              height: 300,
              width: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 40,
                left: 20,),
               // right: MediaQuery.of(context).size.width / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(AppString.moldYour,
                        style: AllScreensConstant.customTextStyle(
                            MediaQuery.of(context).size.width / 20,
                            FontWeightManager.bold,
                            ColorManager.white)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MaterialButton(
                      color: ColorManager.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 10),
                        child: Text(
                          AppString.applyTxt,
                          style: RButtonTheme.roundedButtonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
