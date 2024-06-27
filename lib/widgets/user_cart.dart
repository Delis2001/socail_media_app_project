// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserCart extends StatefulWidget {
  String? FirstName;
  String? LastName;
  String? email;
  String? ProfilePics;
  String? gender;

  UserCart(
      {super.key,
     required  this.FirstName,
     required  this.LastName,
   required    this.email,
   required    this.gender,
   required    this.ProfilePics});

  @override
  State<UserCart> createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180,
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:(widget.ProfilePics == null) ? Icon(Icons.person): CircleAvatar(
                backgroundImage: NetworkImage(
                widget.ProfilePics!
                ),
                radius: 70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( '${widget.FirstName} ${widget.LastName}',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    widget.email!,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    widget.gender!,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
