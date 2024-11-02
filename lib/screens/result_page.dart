import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String getClass;
  final String advise;
  final String normal;
  final Color colortext;

  const ResultPage(
      {super.key,
      required this.bmi,
      required this.getClass,
      required this.normal,
      required this.advise,
      required this.colortext});

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(15),
            child: const Text(
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
              padding: const EdgeInsets.all(23),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 0, 217, 255).withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
                color: const Color.fromARGB(255, 10, 41, 61),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    getClass,
                    style: TextStyle(
                      color: colortext,
                      fontSize: 27.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmi,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Normal BMI range:',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    normal,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    advise,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 204, 255),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 60,
                child: const Center(
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
