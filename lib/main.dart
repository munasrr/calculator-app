import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'MY calculator',
              style: TextStyle(color: Colors.white),
            )),
        body: const Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";

  void buttonPressed(String value) {
    setState(() {
      if (value == "C") {
      } else {
        output = output == "0" ? value : output = value;
      }
    });
  }

  Widget buildButton(String text, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Add padding for spacing
        child: ElevatedButton(
          onPressed: () => buttonPressed(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.all(15), //  button size
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 26, color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Display for output
        const SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.green,
          padding: const EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            output,
            style: const TextStyle(
              fontSize: 48,
              color: Colors.white,
            ),
          ),
        ),
        const Divider(height: 2, color: Colors.black),
        // "General
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            "General",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        // Buttons for the calculator
        Column(
          children: [
            Row(children: [
              //functio buildbutton called for each button
              buildButton("1", Colors.blue),
              buildButton("2", Colors.blue),
              buildButton("3", Colors.blue),
            ]),
            Row(children: [
              buildButton("4", Colors.blue),
              buildButton("5", Colors.blue),
              buildButton("6", Colors.blue),
            ]),
            Row(children: [
              buildButton("7", Colors.blue),
              buildButton("8", Colors.blue),
              buildButton("9", Colors.blue),
            ]),
            Row(children: [
              buildButton(".", Colors.blue),
              buildButton("0", Colors.blue),
              buildButton("C", Colors.red),
            ]),
          ],
        )
      ],
    );
  }
}
