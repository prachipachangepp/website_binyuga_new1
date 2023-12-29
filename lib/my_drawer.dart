import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/string_manager.dart';
import 'package:website_binyuga_new1/presentation/theme_manager.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/career_page_mobile.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/feature_page_mobile.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/wwd_page_mobile.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 30),
            child: Image.asset(
              'images/binyuga_logo.png',
              width: 120,
            ),
          ),
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff210B32),
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppString.whoWeAre,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
          ListTile(
            title: const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('What we do',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
            leading: const Icon(Icons.rotate_left),
            title: const Text('Features',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const MobileWhatWeDoHomeScreen()),
              ); // Handle the settings item tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.rotate_left),
            title: const Text('Career',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const MobileWhatWeDoHomeScreen()),
              ); // Handle the settings item tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.rotate_left),
            title: const Text('Portfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const MobileWhatWeDoHomeScreen()),
              ); // Handle the settings item tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.rotate_left),
            title: const Text('Contact Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const MobileWhatWeDoHomeScreen()),
              ); // Handle the settings item tap
            },
          ),
          // Add more items as needed
        ],
      ),
    );
  }
}
