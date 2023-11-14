import 'package:flutter/material.dart';
// import 'package:internship_task1/calculating.dart';
// import 'package:internship_task1/login.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_screen(),
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Color.fromARGB(255, 123, 321, 222),
      //   // scaffoldBackgroundColor: Color.fromARGB(55, 88, 27, 51)
      // ));
    );
  }
}
