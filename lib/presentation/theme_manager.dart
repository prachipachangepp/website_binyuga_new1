import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_manager.dart';
import 'font_manager.dart';

/// homescreen sidebar constant textstyle
class HomeScreen {
  static TextStyle sidebarTextStyle = GoogleFonts.inter(
      //textStyle: TextStyle(
      fontWeight: FontWeightManager.medium,
      decoration:TextDecoration.none,
      fontSize: FontSize.s8,
      letterSpacing: -0.011,
      color: ColorManager.white
      //)
      );
}

///rounded button theme constant
class RButtonTheme {
  static TextStyle roundedButtonTextStyle = GoogleFonts.inter(
      //textStyle: TextStyle(
      fontWeight: FontWeightManager.semiBold,
      fontSize: FontSize.s15,
      letterSpacing: -0.011,
      color: ColorManager.black
  );
}

///changing elements
class AllScreensConstant {
  static TextStyle customTextStyle(
      double fontSize, FontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily1,
      decoration:TextDecoration.none,
      fontWeight: fontWeight,
      color: color,
    );
  }
}

/// last DescriptionScreen
class LastDescriptionScreen {
  static double getHeadingFontSize(BuildContext context) {
    return MediaQuery.of(context).size.width /40;
  }

  static TextStyle rowTextStyle(BuildContext context) {
    return GoogleFonts.inter(
        //textStyle: TextStyle(
        fontWeight: FontWeightManager.extraBold,
        fontSize: getHeadingFontSize(context),
        letterSpacing: -0.011,
        color: ColorManager.white);
  }
}

class LastDescriptionScreenHeadMobile {
  static double getHeadingFontSize(BuildContext context) {
    return MediaQuery.of(context).size.width /30;
  }

  static TextStyle rowTextStyle(BuildContext context) {
    return GoogleFonts.inter(
      //textStyle: TextStyle(
        fontWeight: FontWeightManager.extraBold,
        fontSize: getHeadingFontSize(context),
        letterSpacing: -0.011,
        color: ColorManager.white);
  }
}

class LastColumnScreen {
  static double getFontSize(BuildContext context) {
    return MediaQuery.of(context).size.width /60;
  }

  static TextStyle columnTextStyle(BuildContext context) {
    return GoogleFonts.inter(
      fontWeight: FontWeightManager.regular,
      fontSize: getFontSize(context),
      letterSpacing: -0.011,
      color: ColorManager.white,
    );
  }
}
///mobilr
class LastColumnScreenMobile {
  static double getFontSize(BuildContext context) {
    return MediaQuery.of(context).size.width /60;
  }

  static TextStyle columnTextStyle(BuildContext context) {
    return GoogleFonts.inter(
      fontWeight: FontWeightManager.regular,
      fontSize: getFontSize(context),
      letterSpacing: -0.011,
      color: ColorManager.white,
    );
  }
}

class BottomRowScreen {
  static double getNewFontSize(BuildContext context) {
    return MediaQuery.of(context).size.width / 80;
  }

  static TextStyle bottomRowTextStyle(BuildContext context) {
    return GoogleFonts.inter(
        fontWeight: FontWeightManager.regular,
        fontSize: getNewFontSize(context),
        letterSpacing: -0.011,
        color: ColorManager.white);
  }
}

class BottomRowScreenMobile {
  static double getNewFontSize(BuildContext context) {
    return MediaQuery.of(context).size.width / 60;
  }

  static TextStyle bottomRowTextStyle(BuildContext context) {
    return GoogleFonts.inter(
        fontWeight: FontWeightManager.medium,
        fontSize: getNewFontSize(context),
        letterSpacing: -0.011,
        color: ColorManager.white);
  }
}

///Union imageScreen
class UnionTxtScreen1 {
  static double getNewFont1Size(BuildContext context) {
    return MediaQuery.of(context).size.width / 60;
  }

  static TextStyle union1TextStyle(BuildContext context) {
    return GoogleFonts.inter(
        fontWeight: FontWeightManager.medium,
        fontSize: getNewFont1Size(context),
        letterSpacing: -0.011,
        color: ColorManager.white
        //)
        );
  }
}

class UnionTxtScreen2 {
  static double getNewFont2Size(BuildContext context) {
    return MediaQuery.of(context).size.width / 42;
  }
  static TextStyle union2TextStyle(BuildContext context) {
    return GoogleFonts.inter(
        //textStyle: TextStyle(
        fontWeight: FontWeightManager.medium,
        fontSize: getNewFont2Size(context),
        letterSpacing: -0.011,
        color: ColorManager.blueShade
        //)
        );
  }
}

///AboutUs Screen
class AboutUsConstant {
  static TextStyle aboutTextStyle = GoogleFonts.inter(
      //textStyle: TextStyle(
      fontWeight: FontWeightManager.medium,
      fontSize: FontSize.s58,
      color: ColorManager.black
      //)
      );
}

/// TeamMember Screen
class TeamMemberConstant {
  static TextStyle nameTextStyle = GoogleFonts.inter(
      //textStyle: TextStyle(
      fontWeight: FontWeightManager.medium,
      color: ColorManager.black
      //)
      );
}
/// Bottom NavBar

class BottomBarConstant {
  static TextStyle emailTextStyle= GoogleFonts.inter(
  //textStyle: TextStyle(
color: ColorManager.white,
fontSize: 18);
}
/// Career page binyuga
class CareerPageConstant {

static double getNewFontSizeCareer(BuildContext context) {
return MediaQuery.of(context).size.width / 55;
}
  static TextStyle careerTextStyle (BuildContext context){
    return GoogleFonts.inter(
      fontWeight: FontWeightManager.medium,
      fontSize: getNewFontSizeCareer(context),
      decoration:TextDecoration.none,
      color: ColorManager.white);
  }
}


/// WhatWeDo SubHome Page
class WhatWeDoSubPageConstant {
  static double getNewFontSizeWWD(BuildContext context) {
    return MediaQuery.of(context).size.width / 15;
  }
  static TextStyle subHomeTextStyle(BuildContext context){
    return GoogleFonts.inter(
        fontSize: getNewFontSizeWWD(context),
        fontWeight: FontWeightManager.extraBold,
        decoration:TextDecoration.none,
        color: ColorManager.darkBlue1
    );
  }
}

/// WhatWeDo ExploreScreen
class WhatWeDoExploreConstant {
  static TextStyle subHomeTextStyle = GoogleFonts.inter(
    backgroundColor:ColorManager.skyBlue1,
    fontSize:  FontSize.s20,
    color: ColorManager.white,
    fontWeight: FontWeightManager.extraBold,
  );

}
///FeatureSubHome Page
class FeatureSubHomeConstant {
  static TextStyle featuresubHomeTextStyle = GoogleFonts.inter(
      fontSize: FontSize.s46,
      fontWeight: FontWeightManager.extraBold,
      decoration:TextDecoration.none,
      color: ColorManager.darkBlue1);
}
/// FeatureSubHome Page LongText
class FeatureLongTxtConstant {
  static TextStyle featurelongTextStyle = GoogleFonts.inter(
      fontSize: FontSize.s25,
      fontWeight: FontWeightManager.semiBold,
      decoration:TextDecoration.none,
      color: ColorManager.white);
}


// class AppConstants {
//   // Image paths
//   static const String imagePath1 = 'images/sd.png';
//   static const String imagePath2 = 'images/ps.png';
//   static const String imagePath3 = 'images/ui.png';
//   static const String imagePath4 = 'images/wd.png';
//   static const String imagePath5 = 'images/cm.png';
//   static const String imagePath6 = 'images/ad.png';
//
//
//
//   // Texts
//   static const String welcomeText = 'Welcome';
//   static const String buttonText = 'Click me';
// }