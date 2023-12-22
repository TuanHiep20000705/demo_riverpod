import 'dart:convert';

import 'photo_model.dart';
import 'package:http/http.dart' as http;

List<Photo> parsePhoto(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  return list.map((e) => Photo.fromJson(e)).toList();
}

Future<List<Photo>> fetchPhoto() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode == 200) {
    return parsePhoto(response.body);
  } else {
    throw Exception('Cannot fetch photos');
  }
}