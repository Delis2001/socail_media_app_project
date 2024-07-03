// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socail_media_app_project/providers/info_provider.dart';
import 'package:socail_media_app_project/screens/sumary_screen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  TextEditingController answerController = TextEditingController();
  TextEditingController answerController2 = TextEditingController();
  List<String> answer1 = ["Chinedu", "Lawrence", "Fidelis", "Valentine"];
  List<String> answer2 = ['Tinubu', "Asiwaju", "Jagaban", "Bola Asiwaju"];
  bool? result1;
  bool? result2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            '''Who are the mobile app students
              ''',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 240,
            child: TextField(
              controller: answerController,
              decoration: InputDecoration(hintText: 'Enter Answer'),
            ),
          ),
          Text(
            'Result:  $result1',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Who is the president of Nigeria',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 240,
            child: TextField(
              controller: answerController2,
              decoration: InputDecoration(hintText: 'Enter Answer'),
            ),
          ),
          Text(
            'Result:  $result2',
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Provider.of<InfoProvider>(context, listen: false)
                      .saveScore(0);
                  print(answerController.text);
                  if (answer1.any((item) =>
                      item.toLowerCase() ==
                      answerController.text.toLowerCase())) {
                    setState(() {
                      result1 = true;
                      Provider.of<InfoProvider>(context, listen: false)
                          .increaseScore();
                    });
                  } else {
                    setState(() {
                      result1 = false;
                    });
                  }

                  if (answer2.any((item) =>
                      item.toLowerCase() ==
                      answerController2.text.toLowerCase())) {
                    setState(() {
                      result2 = true;
                      Provider.of<InfoProvider>(context, listen: false)
                          .increaseScore();
                    });
                  } else {
                    setState(() {
                      result2 = false;
                    });
                  }
                },
                child: Text('Check')),
          ),

          Text(
              "Score: ${Provider.of<InfoProvider>(context, listen: true).score}/2"),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SummaryScreen()));
                },
                child: Text("Get Summary")),
          )
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [Text('Result: '), Text('Null')],
          // )
        ],
      )),
    );
  }
}
