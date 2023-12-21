import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/home_page_screens/home_section_one.dart';
import 'example.dart';

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desktop Layout'),
      ),
      body: DesktopContent(),
    );
  }
}

class DesktopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              HomeSectionOne(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
        ),
      ),
    );
  }
}
