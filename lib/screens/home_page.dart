import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/widgets/gender_selection.dart';
import 'package:bmi_calculator_app/widgets/height_selection.dart';
import 'package:bmi_calculator_app/widgets/weight_selection.dart';
import 'package:bmi_calculator_app/formula_calculator.dart';
import 'package:bmi_calculator_app/screens/result_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMale = true;
  int height = 150;
  int weight = 50;

  void updateGender(bool gender) {
    setState(() {
      isMale = gender;
    });
  }

  void updateHeight(int newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  void updateWeight(int newWeight) {
    setState(() {
      weight = newWeight;
    });
  }

  void calculateBMI() {
    CalculateForm calc = CalculateForm(
      height: height,
      weight: weight,
      isMale: isMale,
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          bmi: calc.resultBMI(),
          getClass: calc.getClass(),
          advise: calc.getAdvise(),
          normal: calc.normal(),
          colortext: calc.colorText(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 9, 20, 31),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PilihGender(onGenderSelected: updateGender),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Column(
              children: [
                SliderHeight(onHeightChanged: updateHeight),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Column(
              children: [
                PilihWeight(onWeightChanged: updateWeight),
              ],
            ),
          ),
          GestureDetector(
            onTap: calculateBMI,
            child: Container(
              decoration: _GlowBox(),
              // color: Colors.black,
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 60,
              child: const Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _GlowBox() {
    return const BoxDecoration(
              color: Colors.black,
              boxShadow:  [
                BoxShadow(
                  color: Color.fromARGB(255, 0, 204, 255),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(2, 1),
                ),
              ],
            );
  }
}
