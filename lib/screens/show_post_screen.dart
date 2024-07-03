// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:socail_media_app_project/data/post_data.dart';
import 'package:socail_media_app_project/widgets/post_card.dart';

class ShowPostScreen extends StatefulWidget {
  const ShowPostScreen({super.key});

  @override
  State<ShowPostScreen> createState() => _ShowPostScreenState();
}

class _ShowPostScreenState extends State<ShowPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('ShowUserPost',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PostCard(
                  authorprofilepic:
                      posts[index]['author_profile_pic'].toString(),
                  authorname: posts[index]['author_name'].toString(),
                  content: posts[index]['content'].toString(),
                  images: posts[index]['images'][0]);
            }));
  }
}
