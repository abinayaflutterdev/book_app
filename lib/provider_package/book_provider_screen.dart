import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:book_app/model_class/book_model_class.dart';
import 'package:http/http.dart' as http;

Future<BookModelClass> fetchBooks() async{
  final response = await http.get(Uri.parse( 'https://openlibrary.org/search.json?q=harry+potter'));

  print(response.statusCode);
  print(response.body);

  if(response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return BookModelClass.fromJson(data);
  }else{
    throw Exception('Failed to load');
  }

}