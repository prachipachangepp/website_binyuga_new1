import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/string_manager.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/career_page_mobile.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/feature_page_mobile.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height:MediaQuery.of(context).size.height / 30,
        width:MediaQuery.of(context).size.height / 50,
        color: Color(0xff210B32),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 30,right: 150),
              child: Image.asset(
                'images/binyuga_logo.png',
                width: 50,
              ),
            ),

            ListTile(
              title: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(AppString.whoWeAre,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileCareerHomeScreen()));
                // Handle the home item tap
              },
            ),
            ListTile(title: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('What we do',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileFeaturesHomeScreen()));
              },
            ),
            ListTile(
              title: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Features',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileFeaturesHomeScreen()));
              },
            ),
            ListTile(
              title: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Career',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:20,
                        fontWeight: FontWeight.bold,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileFeaturesHomeScreen()));
              },
            ),
            ListTile(
              title: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Portfolio',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileFeaturesHomeScreen()));
              },
            ),
            ListTile(
              title: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text('Contact Us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:20,
                        fontWeight: FontWeight.bold,
                      ))),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MobileFeaturesHomeScreen()));
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
