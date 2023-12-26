import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../presentation/value_manager.dart';

class HomeSectionTwo extends StatelessWidget {
  const HomeSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text(AppString.ourApproach,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontWeight: FontWeightManager.bold,
                            fontSize: MediaQuery.of(context).size.width / 25,
                            letterSpacing: -0.011,
                            color: ColorManager.darkBlue),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30),
                  child: Image.asset("images/inverted_start.png",
                      width: MediaQuery.of(context).size.width / 20),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 9),
                  child: Center(
                    child: Text(
                      AppString.approachTxt,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                        fontWeight: FontWeightManager.bold,
                        fontSize: MediaQuery.of(context).size.width / 50,
                        letterSpacing: -0.011,
                        color: ColorManager.black,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s20),
            Padding(
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 3),
              child: Image.asset(
                "images/inverted_end.png",
                width: MediaQuery.of(context).size.width / 20,
              ),
            ),
            const SizedBox(height: AppSize.s40),
          ],
        ),
      ]),
    );
  }
}
