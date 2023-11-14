import 'package:flutter/material.dart';
import 'calculating.dart';

class Result extends StatelessWidget {
  final bmi_result;
  final bmi_interpolation;
  final bmi_text;

  Result(
      {required this.bmi_result,
      required this.bmi_interpolation,
      required this.bmi_text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RESULT"),
          backgroundColor: bluecolour,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 25, 116, 190), Colors.white],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      "YOUR RESULT",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    color: bluecolour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Your current BMI is",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          bmi_result,
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          bmi_text,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    bmi_interpolation,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
