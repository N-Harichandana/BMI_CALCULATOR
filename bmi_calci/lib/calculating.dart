import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_calculating.dart';
import 'resultpage.dart';
import 'reusable_avathar.dart';

const bluecolour = const Color.fromARGB(255, 14, 62, 145);
const greencolour = Colors.green;

enum Gender { male, female }

// class Calculatorr extends StatelessWidget {
//   const Calculatorr({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int height = 180;
  int weight = 60;
  int age = 20;
  Gender selectedgender = Gender.female;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bluecolour,
        title: Center(child: Text("WHAT'S YOUR BMI??")),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 25, 1, 190), Colors.white],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        // margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusable_avatar(
                  onpress: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  icon: FontAwesomeIcons.mars,
                  colour:
                      selectedgender == Gender.male ? greencolour : bluecolour,
                ),
                reusable_avatar(
                    onpress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? greencolour
                        : bluecolour,
                    icon: FontAwesomeIcons.venus)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Male"), Text("Female")],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Height"), Text("$height cm")],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xFF8D8E98),
                activeTrackColor: Colors.white,
                thumbColor: Colors.green,
                overlayColor: Color(0x29EB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: height.toDouble(),
                onChanged: (double newvalue) {
                  setState(() {
                    height = newvalue.round();
                  });
                },
                min: 0,
                max: 220.0,
                activeColor: Colors.green,
                inactiveColor: Color(0XFF8D8E98),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Weight"), Text("$weight kg")],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xFF8D8E98),
                activeTrackColor: Colors.white,
                thumbColor: Colors.green,
                overlayColor: Color(0x29EB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: weight.toDouble(),
                onChanged: (double newvalue) {
                  setState(() {
                    weight = newvalue.round();
                  });
                },
                min: 0,
                max: 180,
                activeColor: Colors.green,
                inactiveColor: Color(0XFF8D8E98),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Age"), Text("$age years")],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Color(0xFF8D8E98),
                activeTrackColor: Colors.white,
                thumbColor: Colors.green,
                overlayColor: Color(0x29EB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
              ),
              child: Slider(
                value: age.toDouble(),
                onChanged: (double newvalue) {
                  setState(() {
                    age = newvalue.round();
                  });
                },
                min: 0,
                max: 100,
                activeColor: Colors.green,
                inactiveColor: Color(0XFF8D8E98),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              color: bluecolour,
              height: 80,
              width: double.infinity,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Calculation calci =
                        Calculation(height: height, weight: weight);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Result(
                            bmi_result: calci.Calculate_Bmi(),
                            bmi_text: calci.Result_text(),
                            bmi_interpolation: calci.getInterpretation(),
                          ),
                        ));
                  });
                },
                child: Center(
                    child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
