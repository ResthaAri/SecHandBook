//import 'package:flutter/material.dart';

//import 'package:SecHandBook/components/asset_image_widget.dart';

class News {
  final String id;
  final String title;
  final String body;

  News({required this.id, required this.title, required this.body});

  factory News.fromJson(Map<String, dynamic> json) => News(
        id: json['id'],
        title: json['title'],
        body: json['body'],
      );
}
