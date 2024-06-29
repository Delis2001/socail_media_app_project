import 'package:flutter/material.dart';
import 'package:socail_media_app_project/services/post_services.dart';
import 'package:socail_media_app_project/widgets/post_card.dart';

class ShowPostScreen extends StatefulWidget {
  const ShowPostScreen({Key? key}) : super(key: key);

  @override
  State<ShowPostScreen> createState() => _ShowPostScreenState();
}

class _ShowPostScreenState extends State<ShowPostScreen> {
  late Future<List<Map<String, dynamic>>> _postDataFuture;

  @override
  void initState() {
    super.initState();
    _postDataFuture = PostServices.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            'Show User Posts',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: FutureBuilder<List<Map<String, dynamic>>>(
            future: _postDataFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No posts available'));
              } else {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final post = snapshot.data![index];
                    return PostCard(
                      authorprofilepic: post['author_profile_pic'] ?? '',
                      authorname: post['author_name'] ?? 'Unknown',
                      content: post['content'] ?? '',
                      images: List<String>.from(post['images'] ?? []),
                    );
                  },
                );
              }
            }));
  }
}
