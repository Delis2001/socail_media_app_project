// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Backgroundchanger extends StatefulWidget {
  const Backgroundchanger({super.key});

  @override
  State<Backgroundchanger> createState() => _BackgroundchangerState();
}

class _BackgroundchangerState extends State<Backgroundchanger> {
  Color _backgroundColor = Colors.white; // Initial background color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('BackgroundColor Change'),
      ),
      body:Container(
        color:_backgroundColor,
        child: Center(
          child: Column( 
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
        Row( 
            children: [
            
              ElevatedButton(onPressed: (){
                setState(() {
                   _backgroundColor = Colors.blue; // Change background color to blue
                });
              }, child: Text('blue')
              ),
               ElevatedButton(onPressed: (){
                setState(() {
                   _backgroundColor = Colors.red; 
                });
              }, child: Text('Red')
              ),
            ],
          ),
           ElevatedButton(onPressed: (){
            setState(() {
               _backgroundColor = Colors.black; 
            });
          }, child: Text('Black')
          ),
      ],
             ),
      
       
      ),
        

    ));
  }
}