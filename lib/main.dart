import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binyuga WebSite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binyuga WebSite'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 0.6,
                    height: 200,
                    color: Colors.red,
                    child: Center(child: Text('Section 1')),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 0.6,
                    height: 200,
                    color: Colors.green,
                    child: Center(child: Text('Section 1')),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 0.6,
                    height: 200,
                    color: Colors.red,
                    child: Center(child: Text('Section 1')),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 0.6,
                    height: 200,
                    color: Colors.green,
                    child: Center(child: Text('Section 1')),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 0.6,
                    height: 200,
                    color: Colors.red,
                    child: Center(child: Text('Section 1')),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 0.6,
                    height: 200,
                    color: Colors.green,
                    child: Center(child: Text('Section 1')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
