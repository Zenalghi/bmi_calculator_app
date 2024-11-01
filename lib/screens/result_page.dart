import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String getClass;
  final String advise;
  final Color colortext;

  ResultPage(
      {required this.bmi,
      required this.getClass,
      required this.advise,
      required this.colortext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Expanded(
            flex: 6,
            child: Container(
              width: 330,
              height: 330,
              padding: EdgeInsets.all(23),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 41, 61),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('jhj'),
            ),
          ),
          // SizedBox(height: 20),
          Expanded(
            child: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Container(
                color: Colors.black,
                margin: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 60,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
