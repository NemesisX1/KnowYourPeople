import 'dart:developer';

import 'package:codemagic_demo_app/models/author.model.dart';
import 'package:codemagic_demo_app/services/base.service.dart';
import 'package:dio/dio.dart';

class ApiService extends BaseService {
  static const baseUrl = 'https://quotable.io/authors';

  Future<List<Author>> getAuthors() async {
    final dio = Dio();
    List<Author> authors = [];

    try {
      final response = await dio.get(baseUrl);

      final results = response.data['results'];

      for (var result in results) {
        authors.add(Author.fromJson(result));
      }
      return authors;
    } catch (e) {
      log(e.toString());
    }

    return authors;
  }
}

// final apiService = ApiService();
