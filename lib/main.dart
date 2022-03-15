import 'package:flutter/material.dart';
import 'package:flutter_project_2/screens/Guest.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project 2',
      home: GuestScreen(),
    );
  }
}
