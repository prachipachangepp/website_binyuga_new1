import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';

class HomeSectionThree extends StatelessWidget {
  const HomeSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Base Image
        Image.network(
          'images/union.png',
          fit: BoxFit.fill,
          height: 2200,
          // width: 2000,
           width: MediaQuery.of(context).size.width/0.1,
        ),
        Padding(
          padding:  EdgeInsets.only(left:  MediaQuery.of(context).size.width/20,top:15,),
          child: Row(
            children: [
              Image.network(
                "images/union_1.png",
                height: 700,
                // width: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left:15),
                child: Text(
                  AppString.unionTxt1,
                  style: UnionTxtScreen1.union1TextStyle(context),
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width /30,right: MediaQuery.of(context).size.width /35,bottom:280,),
          child: Row(
            children: [
              Image.network(
                "images/rectangle.png",
                height: 730,
                // width: MediaQuery.of(context).size.width * 0.8,
                width: MediaQuery.of(context).size.width / 1.9,
              ),
            ],
          ),
        ), Center(
          child: Text(
            AppString.unionTxt2,
            //textAlign: TextAlign.center,
            style: UnionTxtScreen2.union2TextStyle(context),
          ),


        ),
        Padding(
          padding: const EdgeInsets.only(top: 1200.0, left:10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:5),
                child: Text(
                  AppString.unionTxt3,
                  style: UnionTxtScreen1.union1TextStyle(context),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              Padding(
                padding: EdgeInsets.only(right:MediaQuery.of(context).size.width /61,
                    left:MediaQuery.of(context).size.width /50,
                    top:MediaQuery.of(context).size.width/50),
                child: Image.network(
                  "images/union_2.png",
                  height: 700,
                  // width: MediaQuery.of(context).size.width * 0.8,
                  width: MediaQuery.of(context).size.width / 1.9,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 1150,right: MediaQuery.of(context).size.width / 50,left: MediaQuery.of(context).size.width / 2.5,bottom:10),
          child: Image.network(
            "images/rectangle.png",
            height: 855,
            // width: MediaQuery.of(context).size.width * 0.8,
            width: MediaQuery.of(context).size.width / 1.8,
          ),
        ),
      ],
    );
  }
}
