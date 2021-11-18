import 'dart:convert';

import 'package:http/http.dart' as http;

import 'post_model.dart';

class PostService {
  final String url;

  PostService({this.url = 'https://jsonplaceholder.typicode.com/posts'});
  Future<PostModel> getPostById(int id) async {
    try {
      final response = await http.get(Uri.parse('$url/$id'));
      if (response.statusCode == 200) {
        return PostModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load Post with id:= $id ');
      }
    } catch (err) {
      throw Exception('Failed to load Post with id:= $id because -> $err ');
    }
  }

  Future<PostModel> createPost(PostModel post) async {
    final response = await http.post(Uri.parse('$url'),
        body: post.toJsonString(true),
        headers: {'Content-type': 'application/json; charset=UTF-8'});

    if (response.statusCode == 201) {
      return PostModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(
          'Failed to create Post with body:= ${post.toJsonString(true)} ');
    }
  }

  Future<List<PostModel>> getPosts() async {
    try {
      final response = await http.get(Uri.parse('$url'));
      if (response.statusCode == 200) {
        return (jsonDecode(response.body) as List<dynamic>)
            .map((post) => PostModel.fromJson(post))
            .toList();
      } else {
        throw Exception('Failed to load Posts');
      }
    } catch (err) {
      throw Exception('Failed to load Posts because -> $err ');
    }
  }
}
