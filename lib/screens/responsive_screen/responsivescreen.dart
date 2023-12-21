import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive Scroll Example'),
        ),
        body: MyResponsiveWidget(),
      ),
    );
  }
}

class MyResponsiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        /// screen scrolling accordingly
        if (constraints.maxWidth < 600) {
          /// Scroll both horizontally and vertically
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: buildContent(),
            ),
          );
        } else {
          ///  Scroll only vertically
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: buildContent(),
          );
        }
      },
    );
  }

  Widget buildContent() {
    return Container(
      // Your content goes here
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          20,
          (index) => Container(
            height: 100,
            width: 200,
            margin: EdgeInsets.all(8.0),
            color: Colors.blue,
            child: Center(
              child: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
