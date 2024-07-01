// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController firstNumController = TextEditingController();
  TextEditingController secondNumController = TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                controller: firstNumController,
                decoration: InputDecoration(hintText: "Enter First Number"),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                controller: secondNumController,
                decoration: InputDecoration(hintText: "Enter Second Number"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      int sum = int.parse(firstNumController.text) +
                          int.parse(secondNumController.text);
                      setState(() {
                        result = sum.toString();
                      });
                    },
                    iconSize: 50,
                    icon: Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      int subtractionResult =
                          int.parse(firstNumController.text) -
                              int.parse(secondNumController.text);
                      setState(() {
                        result = subtractionResult.toString();
                      });
                    },
                    iconSize: 50,
                    icon: Icon(Icons.remove)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      int product = int.parse(firstNumController.text) *
                          int.parse(secondNumController.text);
                      setState(() {
                        result = product.toString();
                      });
                    });
                  },
                  iconSize: 50,
                  icon: Text(
                    '*',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      double division = int.parse(firstNumController.text) /
                          int.parse(secondNumController.text);
                      int res = division.ceil();
                      setState(() {
                        result = res.toString();
                      });
                    },
                    iconSize: 50,
                    icon: Text(
                      "/",
                      style: TextStyle(fontSize: 40),
                    ))
              ],
            ),
            Text(
              'Result:',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              result,
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}
