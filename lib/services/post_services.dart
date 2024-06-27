import 'dart:convert';

import 'package:http/http.dart' as http;

class PostServices {
  static Future<List<Map<String, dynamic>>> fetchPosts() async {
    http.Response response = await http.get(
        Uri.parse("https://testapi.thepivot.ng/api/test-feed/posts/test/36"));
    //print(response.body);

    var data = jsonDecode(response.body) as List<dynamic>;
    return data.map((post) => post as Map<String, dynamic>).toList();
  }
}
