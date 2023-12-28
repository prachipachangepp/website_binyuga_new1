import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';

class ImageWithButtonStack extends StatelessWidget {
  final String imageUrl;
  final String buttonText;
  final VoidCallback onPressed;

  const ImageWithButtonStack({
    Key? key,
    required this.imageUrl,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final double buttonWidth = MediaQuery.of(context).size.width / 4;
    return Container(
      height: AppSize.s50,
      child: Stack(
        children: [
          // Image
          Image.network(
            imageUrl,
            width: MediaQuery.of(context).size.width / 50,
            height: AppSize.s50,
            fit: BoxFit.cover,
          ),
          // Rectangle Button
          Positioned(
              top: (270 - 35) ,
            left: MediaQuery.of(context).size.width / 25,
            right: MediaQuery.of(context).size.width / 25,
            //left: MediaQuery.of(context).size.width / 20 + (buttonWidth / 2),
            child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(ColorManager.skyBlue1),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: ColorManager.skyBlue1),
                  ),
                ),
              ),
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: ColorManager.skyBlue1,
                  fontSize: MediaQuery.of(context).size.width/90,
                  color: ColorManager.white,
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
