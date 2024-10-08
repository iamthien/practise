import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("StateFull widget"),
            backgroundColor: Colors.amber,
          ),
          body: const Center(child: ButtonCount()))));
}

class ButtonCount extends StatefulWidget {
  const ButtonCount({super.key});

  @override
  State<ButtonCount> createState() => _ButtonCountState();
}

class _ButtonCountState extends State<ButtonCount> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++; // Increment the count
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _count.toString(),
          style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(onPressed: _incrementCount, child: const Text("Count"))
      ],
    );
  }
}
