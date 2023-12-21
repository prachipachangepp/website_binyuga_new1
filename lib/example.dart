import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Screen 1',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.green,
      child: Center(
        child: Text(
          'Screen 2',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}


class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.orange,
      child: Center(
        child: Text(
          'Screen 3',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}


class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Colors.red,
      child: Center(
        child: Text(
          'Screen 4',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
