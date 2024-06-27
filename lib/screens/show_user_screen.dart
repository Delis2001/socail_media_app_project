// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socail_media_app_project/data/user_data.dart';
import 'package:socail_media_app_project/models/user.dart';
import 'package:socail_media_app_project/widgets/user_cart.dart';

class ShowUserScreen extends StatefulWidget {
  const ShowUserScreen({super.key});

  @override
  State<ShowUserScreen> createState() => _ShowUserScreenState();
}

class _ShowUserScreenState extends State<ShowUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text('Show All Users',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body:ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
        return UserCart(FirstName: users[index]['first_name'], LastName:  users[index]['last_name'], email:  users[index]['email'], gender:  users[index]['gender'], ProfilePics:  users[index]['profile_Pics']);
      })
      );
    
  }
}