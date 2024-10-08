import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Count app"),
      ),
      body: const Button(),
    ),
  ));
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int number = 0;

  void increase() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Đến cuối cùng",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'DFVN Les Palmiers'),
          ),
          const SizedBox(height: 50),
          Text(
            "$number",
            style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Times New Roman'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: increase, child: const Text("Count")),
          const SizedBox(height: 30),
          RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                TextSpan(text: "Hello"),
                TextSpan(
                    text: " bold!!!",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextSpan(text: " world")
              ]))
        ],
      ),
    );
  }
}
