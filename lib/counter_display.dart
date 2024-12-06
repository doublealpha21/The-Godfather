import 'package:flutter/material.dart';

class CounterDisplay extends StatefulWidget {
  final Text textRequired;

  const CounterDisplay({required this.textRequired, super.key});

  @override
  CounterDisplayState createState() => CounterDisplayState();
}

class CounterDisplayState extends State<CounterDisplay> {
  int _counter = 0;

  void _incrementCounter1() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jobs Applied: $_counter',
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 16,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: _incrementCounter1,
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
