// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_project_2/screens/guest/Auth.dart';
import 'package:flutter_project_2/screens/guest/Password.dart';
import 'package:flutter_project_2/screens/guest/Term.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({Key? key}) : super(key: key);

  @override
  State<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  List<Widget> _widgets = [];
  int _indexSelected = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _widgets.addAll([
      AuthScreen(
        onChangedStep: (index) => setState(() => index),
      ),
      TermScreen(
        onChangedStep: (index) => setState(() => index),
      ),
      PasswordScreen(
        onChangedStep: (index) => setState(() => index), 
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return _widgets.elementAt(_indexSelected);
  }
}
