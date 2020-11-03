import 'package:flutter/material.dart';
import 'package:si_pegat/screens/intro_page.dart';
// import 'package:project_1/screens/login_page.dart';
// import 'package:project_1/screens/register_page.dart';
// import 'package:si_pegat/screens/splashscreen.dart';
// import 'package:project_1/screens/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
    );
  }
}
