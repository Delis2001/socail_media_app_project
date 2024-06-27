// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_null_comparison, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  String? authorprofilepic;
  String? authorname;
  String? content;
  List<dynamic> images;
  PostCard(
      {super.key,
      required this.authorprofilepic,
      required this.authorname,
      required this.content,
      this.images = const []});

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
            height: 420,
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (widget.authorprofilepic == null)
                          ? Icon(Icons.person)
                          : Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    Image.network(widget.authorprofilepic!)
                                        .image,
                                radius: 30,
                              ),
                            ),
                      (widget.authorname == null)
                          ? Text('Anonymous')
                          : Text(
                              widget.authorname!,
                              style: TextStyle(color: Colors.white),
                            ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('. follow',
                            style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      (widget.content == null)
                          ? Text('')
                          : Text(
                              widget.content!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white),
                            )
                    ],
                  ),
                ),
                (widget.images.isEmpty)
                    ? Container()
                    : Image.network(
                        height: 280,
                        width: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.cover,
                        widget.images[0].toString())
              ],
            ),
          ),
        )
      ],
    );
  }
}
