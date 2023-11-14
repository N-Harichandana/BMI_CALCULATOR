import 'dart:math';

class Calculation {
  int height;
  int weight;

  Calculation({required this.height, required this.weight});
  late double _bmi;
  String Calculate_Bmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String Result_text() {
    if (_bmi >= 30) {
      return 'obesity';
    } else if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return "For individuals dealing with obesity, a balanced approach involving healthier eating habits and regular physical activity can significantly aid in weight management and overall health improvement.";
    } else if (_bmi >= 25) {
      return "For those dealing with overweight concerns, combining a balanced diet with regular physical activity forms a foundational approach towards achieving a healthier weight and lifestyle. ";
    } else if (_bmi > 18.5) {
      return "Good job, keep going!!";
    } else {
      return "For underweight individuals, focus on nutrient-dense foods and regular strength-building exercises to support healthy weight gain and muscle development.";
    }
  }
}
