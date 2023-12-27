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
            'images/bckground.png',
            fit: BoxFit.fill,
            height: AppSize.s700,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 2,
              top: MediaQuery.of(context).size.height / 30,
            ),
            child: Image.asset(
              "images/girl_img.png",
              height: AppSize.s870,
              width: MediaQuery.of(context).size.width / 2.3,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 4,
                left: MediaQuery.of(context).size.width / 5,
                right: MediaQuery.of(context).size.width / 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppString.moldYour,
                    style: AllScreensConstant.customTextStyle(
                        MediaQuery.of(context).size.width / 33,
                        FontWeightManager.bold,
                        ColorManager.white)),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 150),
                  child: MaterialButton(
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
                          vertical: AppPadding.p8,
                          horizontal: MediaQuery.of(context).size.width / 50),
                      child: Text(
                        AppString.applyTxt,
                        style: RButtonTheme.roundedButtonTextStyle,
                      ),
                    ),
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
