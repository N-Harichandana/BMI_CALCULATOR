import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'calculating.dart';
import 'login.dart';
// import 'package:flutter_application_2/login.dart';
// import 'package:flutter_application_2/setting_screen.dart';
// import 'package:flutter_application_2/signup.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});
  @override
  State<Splash_screen> createState() => _splashscreenState();
}

class _splashscreenState extends State<Splash_screen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Log_in()),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 25, 116, 190), Colors.white],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("images/logo.png"),
            ),
          )),
    );
  }
}
