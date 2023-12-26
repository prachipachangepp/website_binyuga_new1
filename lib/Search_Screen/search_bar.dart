// import 'package:flutter/material.dart';
// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   String query = '';
//
//   void onQueryChanged(String newQuery) {
//     setState(() {
//       query = newQuery;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       child: TextField(
//         onChanged: onQueryChanged,
//         decoration: InputDecoration(
//           labelText: 'Search',
//           border: OutlineInputBorder(),
//           prefixIcon: Container(
//             height: 40,
//             width: 40,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(25.0),
//               ),
//             ),
//             child: ShaderMask(
//                 shaderCallback: (Rect bounds) {
//                   return const LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [Colors.red, Colors.yellow, Colors.blue],
//             ).createShader(bounds);
//                   },
//                 child: Icon(Icons.search)),
//           ),
//         ),
//       ),
//     );
//   }
// }