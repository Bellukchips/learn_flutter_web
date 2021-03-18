import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter_web/screen/home.dart';
// import 'package:dynamic_theme/dynamic_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
