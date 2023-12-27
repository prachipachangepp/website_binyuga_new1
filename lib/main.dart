import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/landing_page_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binyuga WebSite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}




// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           bool isWideScreen = constraints.maxWidth > 1200;
//           return SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             // child: SingleChildScrollView(
//             //   scrollDirection: isWideScreen ? Axis.vertical : Axis.horizontal,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 970,
//                         color: ColorManager.white,
//                         child: Center(child: HomeSectionOne()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 500,
//                         child: Center(child: HomeSectionTwo()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1536,
//                         height: 2000,
//                         child: Center(child: HomeSectionThree()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 780,
//                         child: Center(child: HomeSectionFour()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 1500,
//                         child: Center(child: HomeSectionFive()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 800,
//                         child: Center(child: HomeSectionSix()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: isWideScreen
//                             ? MediaQuery.of(context).size.width
//                             : 1240,
//                         height: 187,
//                         child: Center(child: BottomNavBarScreen()),
//                       ),
//                     ],
//                   ),
//           ],
//           ),);
//
//         },
//       ),
//     );
//   }
// }
///
// import 'package:flutter/material.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_five.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_four.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_one.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_seven.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_six.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_three.dart';
// import 'package:website_binyuga_new1/screens/home_page_screens/home_section_two.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Binyuga WebSite',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           bool isMaximized =
//               constraints.maxWidth >= 1600 && constraints.maxHeight >= 900;
//           bool enableHorizontalScroll = !isMaximized;
//
//           return SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: SingleChildScrollView(
//               scrollDirection:
//                   enableHorizontalScroll ? Axis.horizontal : Axis.vertical,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 970,
//                         color: Colors.white,
//                         child: Center(child: HomeSectionOne()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 500,
//                         color: Colors.white,
//                         child: Center(child: HomeSectionTwo()),
//                       ),
//                     ],
//                   ),
//                   // ... other sections
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 2000,
//                         color: Colors.purpleAccent,
//                         child: Center(child: HomeSectionThree()),
//                       ),
//                     ],
//                   ),
//                   // ... other sections
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 900,
//                         color: Colors.orange,
//                         child: Center(child: HomeSectionFour()),
//                       ),
//                     ],
//                   ),
//                   // ... other sections
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 1500,
//                         color: Colors.red,
//                         child: Center(child: HomeSectionFive()),
//                       ),
//                     ],
//                   ),
//                   // ... other sections
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 850,
//                         color: Colors.pink,
//                         child: Center(child: HomeSectionSix()),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         width: 1600,
//                         height: 200,
//                         color: Colors.red,
//                         child: Center(child: BottomNavBarScreen()),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late ScrollController supervisorTableController;
//   late ScrollController tableHeadingController;
//
//   @override
//   void initState() {
//     super.initState();
//     supervisorTableController = ScrollController();
//     tableHeadingController = ScrollController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Text('Hey'),
//             SingleChildScrollView(
//               controller: tableHeadingController,
//               scrollDirection: Axis.horizontal,
//               child: Container(
//                 width: MediaQuery.of(context).size.width + 200,
//                 height: 50, // Set a fixed height for the heading
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 25,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//                       child: Container(
//                         color: Colors.blueGrey,
//                         width: 100, // Set a fixed width for each heading item
//                         child: Center(child: Text("Heading $index")),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               controller: supervisorTableController,
//               scrollDirection: Axis.horizontal,
//               child: Container(
//                 width: MediaQuery.of(context).size.width + 200,
//                 height: MediaQuery.of(context).size.height - 50,
//                 child: ListView.builder(
//                   physics: NeverScrollableScrollPhysics(),
//                   shrinkWrap: true,
//                   itemCount: 25,
//                   itemBuilder: (context, index) {
//                     return Padding(
//                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 4),
//                       child: Container(
//                         color: Colors.blueGrey,
//                         width: 100, // Set a fixed width for each data item
//                         child: Center(child: Text("Data $index")),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Center(
// child: ListView(
// children: [
// DataTable(columns: [
// DataColumn(label: Text("ID")),
// DataColumn(label: Text("Name")),
// DataColumn(label: Text("Label")),
// ], rows: [
// DataRow(cells: [
// DataCell(Text("0001")),
// DataCell(Text("0002")),
// DataCell(Text("0003")),
// ]),
// DataRow(cells: [
// DataCell(Text("0004")),
// DataCell(Text("0005")),
// DataCell(Text("0006")),
// ]),
// DataRow(cells: [
// DataCell(Text("0007")),
// DataCell(Text("0008")),
// DataCell(Text("0009")),
// ]),
// DataRow(cells: [
// DataCell(Text("0001")),
// DataCell(Text("0002")),
// DataCell(Text("0003")),
// ]),
// DataRow(cells: [
// DataCell(Text("0004")),
// DataCell(Text("0005")),
// DataCell(Text("0006")),
// ]),
// DataRow(cells: [
// DataCell(Text("0007")),
// DataCell(Text("0008")),
// DataCell(Text("0009")),
// ]),
// DataRow(cells: [
// DataCell(Text("0001")),
// DataCell(Text("0002")),
// DataCell(Text("0003")),
// ]),
// DataRow(cells: [
// DataCell(Text("0004")),
// DataCell(Text("0005")),
// DataCell(Text("0006")),
// ]),
// DataRow(cells: [
// DataCell(Text("0007")),
// DataCell(Text("0008")),
// DataCell(Text("0009")),
// ]),
// DataRow(cells: [
// DataCell(Text("0001")),
// DataCell(Text("0002")),
// DataCell(Text("0003")),
// ]),
// DataRow(cells: [
// DataCell(Text("0004")),
// DataCell(Text("0005")),
// DataCell(Text("0006")),
// ]),
// DataRow(cells: [
// DataCell(Text("0007")),
// DataCell(Text("0008")),
// DataCell(Text("0009")),
// ]),
// ])
// ],
// ),
// )
// Container(
//   height: 800, // Adjust the height as needed
//   child: ListView(
//     scrollDirection: Axis.vertical,
//     children: [
//       Container(
//         height: 200, // Adjust the height as needed
//         color: Colors.blue,
//         child: Center(child: Text('Vertical Section 1')),
//       ),
//       Container(
//         height: 200, // Adjust the height as needed
//         color: Colors.orange,
//         child: Center(child: Text('Vertical Section 2')),
//       ),
//       // Add more vertical sections as needed
//     ],
//   ),
// ),


// import 'package:flutter/material.dart';
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned.fill(
//             child: Image.asset(
//               'images/Group 220.png', // Replace with the path to your image asset
//               fit: BoxFit.cover,
//             ),
//           ),
//
//           // Your content goes here
//           Positioned(
//             top: 10,
//             left: 0,
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     Image.asset(
//                       'images/binyuga_logo.png',
//
//                     ),
//                     VerticalDivider(
//                       color:Colors.blue,
//                       thickness:2,
//                       indent:300,
//                       endIndent:300,
//                     ),
//                     SizedBox(height: 60,),
//                     Text('Who we are',
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.white,
//                     ),),
//                     SizedBox(height: 30,),
//                     Text('What we do',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                     SizedBox(height: 35,),
//                     Text('Features',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                     SizedBox(height: 35,),
//                     Text('Career',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                     SizedBox(height: 35,),
//                     Text('Portfolio',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//
//
//                   ],
//
//                 ),
//
//
//
//
//                 SizedBox(width:20,),
//                 Text('Contacts',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),),
//                 SizedBox(width: 20,),
//                 Icon(Icons.toggle_off_sharp,color: Colors.white,size: 30,),
//                 SizedBox(width: 20,),
//                 Icon(Icons.search_outlined,color: Colors.white,),
//               ],
//             ),
//           ),
//         ],
//       ),
//
//
//     );
//   }
// }


