import 'package:flutter/material.dart';

class SliderHeight extends StatefulWidget {
  final Function(int) onHeightChanged;

  const SliderHeight({Key? key, required this.onHeightChanged})
      : super(key: key);

  @override
  _SliderHeightState createState() => _SliderHeightState();
}

class _SliderHeightState extends State<SliderHeight> {
  int _height = 160;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 330,
          height: 180,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Height",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "$_height cm",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Slider(
                value: _height.toDouble(),
                min: 100,
                max: 220,
                divisions: 120,
                activeColor: const Color.fromARGB(255, 10, 73, 114),
                thumbColor: Colors.white,
                inactiveColor: Colors.blueGrey,
                onChanged: (double value) {
                  setState(() {
                    _height = value.toInt();
                  });
                  widget.onHeightChanged(_height);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
