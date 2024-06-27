// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socail_media_app_project/screens/show_user_screen.dart';

class SplassScreen extends StatefulWidget {
  const SplassScreen({super.key});

  @override
  State<SplassScreen> createState() => _SplassScreenState();
}

class _SplassScreenState extends State<SplassScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Timer(Duration(seconds: 5), () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => ShowUserScreen(),));
   });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.group,color: Colors.white,size: 100,),
            Text('Socail Media App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}