import 'dart:convert';

import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
