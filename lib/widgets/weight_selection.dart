import 'package:flutter/material.dart';

class PilihWeight extends StatefulWidget {
  final Function(int) onWeightChanged;

  const PilihWeight({Key? key, required this.onWeightChanged})
      : super(key: key);

  @override
  _PilihWeightState createState() => _PilihWeightState();
}

class _PilihWeightState extends State<PilihWeight> {
  int _weight = 50;

  void _incrementWeight() {
    setState(() {
      _weight++;
    });
    widget.onWeightChanged(_weight);
  }

  void _decrementWeight() {
    if (_weight > 0) {
      setState(() {
        _weight--;
      });
      widget.onWeightChanged(_weight);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 160,
      // padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Weight",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  icon: const Icon(Icons.remove_rounded),
                  color: Colors.red,
                  iconSize: 30,
                  onPressed: _decrementWeight,
                  padding: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(),
                ),
              ),
              // const SizedBox(width: 50),
              Text(
                "$_weight kg",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              // const SizedBox(width: 50),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  icon: const Icon(Icons.add_rounded),
                  color: Colors.green,
                  iconSize: 30,
                  onPressed: _incrementWeight,
                  padding: const EdgeInsets.all(8.0),
                  constraints: const BoxConstraints(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
