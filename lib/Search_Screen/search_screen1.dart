import 'package:flutter/material.dart';

import '../screens/landing_page_home.dart';

class SearchScreen1 extends StatefulWidget {
  const SearchScreen1({super.key, required this.title});
  final String title;

  @override
  State<SearchScreen1> createState() => _SearchScreen1State();
}

class _SearchScreen1State extends State<SearchScreen1> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 300,
          padding: const EdgeInsets.only(right: 100),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () => _searchController.clear(),
              ),
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const HomePage()),
                  );
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
