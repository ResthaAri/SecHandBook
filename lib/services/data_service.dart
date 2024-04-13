import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:SecHandBook/dto/news.dart';
import 'package:SecHandBook/endpoints/endpoints.dart';

class DataService {
  // Fetch news
  static Future<List<News>> fetchNews() async {
    final response = await http.get(Uri.parse(Endpoints.news));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((item) => News.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }

  // Create book
  static Future<void> postBook(String title, String body) async {
    Map<String, String> input = {
      "title": title,
      "body": body,
    };
    String dataJson = jsonEncode(input);
    await http.post(
      Uri.parse(Endpoints.news), // Adjust the endpoint accordingly
      body: dataJson,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  // Delete book
  static Future<void> deleteBook(String bookId) async {
    await http.delete(
      Uri.parse('${Endpoints.news}/$bookId'), // Adjust the endpoint accordingly
    );
  }

  // Update book
  static Future<void> updateBook(String bookId, String title, String body) async {
    Map<String, String> input = {
      "title": title,
      "body": body,
    };
    String dataJson = jsonEncode(input);
    await http.put(
      Uri.parse('${Endpoints.news}/$bookId'), // Adjust the endpoint accordingly
      body: dataJson,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }
}
