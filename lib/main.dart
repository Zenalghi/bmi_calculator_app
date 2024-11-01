import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/screens/home_page.dart';

void main() {
  runApp(const BMI_Calculator_Apps());
}

// ignore: camel_case_types
class BMI_Calculator_Apps extends StatelessWidget {
  const BMI_Calculator_Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Home(),
    );
  }
}
