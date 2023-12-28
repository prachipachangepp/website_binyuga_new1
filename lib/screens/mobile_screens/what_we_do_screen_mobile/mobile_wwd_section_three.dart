import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';
import '../../constant_screens/website_constant/explore_screen_image_btn_constant.dart';

class MobileWWDSectionThree extends StatefulWidget {
  const MobileWWDSectionThree({super.key});

  @override
  State<MobileWWDSectionThree> createState() => _MobileWWDSectionThreeState();
}

class _MobileWWDSectionThreeState extends State<MobileWWDSectionThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s780,
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageWithButtonStack(
                      imageUrl: 'images/sd.png',
                      buttonText: 'Software Development',
                      onPressed: () {}),
                  ImageWithButtonStack(
                      imageUrl: 'images/ad.png',
                      buttonText: 'Application Development',
                      onPressed: () {}),
                  ImageWithButtonStack(
                      imageUrl: 'images/wd.png',
                      buttonText: 'Web Development',
                      onPressed: () {})
                ],
              ),
              const SizedBox(
                height: AppSize.s50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ImageWithButtonStack(
                      imageUrl: 'images/ui.png',
                      buttonText: 'Ui/UX Designing',
                      onPressed: () {}),
                  ImageWithButtonStack(
                      imageUrl: 'images/cm.png',
                      buttonText: 'Career Mentoring',
                      onPressed: () {}),
                  ImageWithButtonStack(
                      imageUrl: 'images/ps.png',
                      buttonText: 'Problem Solving',
                      onPressed: () {})
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}