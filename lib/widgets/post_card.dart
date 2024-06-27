// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_null_comparison, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  String? authorprofilepic;
  String authorname;
  String content;
  String images;
  PostCard(
      {super.key,
    required  this.authorprofilepic,
    required  this.authorname,
    required  this.content,
    required  this.images});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 400,
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      (widget.authorprofilepic == null)? Icon(Icons.person):  CircleAvatar(
                        backgroundImage:Image.network( widget.authorprofilepic!
                        ).image,
                        radius: 30,
                      ),
                      Row(
                        children: [
                          (widget.authorname == null)? Text('Valentine Ekwurummadu'):
                          Text( widget.authorname,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('. follow', style: TextStyle(color: Colors.blue))
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      (widget.content == null)? Text('Be patient empires are not build in a day'):
                      Text(widget.content,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                (widget.images == null)? Icon(Icons.account_box_rounded):
              Image.network(height: 280,
                    width: MediaQuery.of(context).size.width * 0.8,
                   widget.images)
              ],
            ),
          ),
        )
      ],
    );
  }
}
