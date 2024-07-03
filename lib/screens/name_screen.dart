// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socail_media_app_project/providers/info_provider.dart';
import 'package:socail_media_app_project/screens/quiz_screen.dart';

class NameScreen extends StatefulWidget {
  NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
      ),
      body: Center(
        child: Column(
          children: [
            Text("what is your name?"),
            SizedBox(
              width: 240,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Enter your name"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<InfoProvider>(context, listen: false)
                      .saveName(nameController.text);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => QuizScreen()));
                },
                child: Text("NEXT"))
          ],
        ),
      ),
    );
  }
}
