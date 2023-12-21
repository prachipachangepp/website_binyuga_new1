import 'package:flutter/material.dart';

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
      height: 270,
      child: Stack(
        children: [
          // Image
          Image.network(
            imageUrl,
            width: MediaQuery.of(context).size.width / 4,
            height: 250,
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
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 20,
                  color: Colors.white,
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
