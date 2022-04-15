import 'package:codemagic_demo_app/models/author.model.dart';
import 'package:codemagic_demo_app/services/api.service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:codemagic_demo_app/main.dart';

void main() {
  group('ApiService tests', () {
    final api = ApiService();
    List<Author> authors = [];

    setUp(() async {
      authors = await api.getAuthors();
    });

    test('Test simple request', () {
      expect(authors, isNotEmpty);
    });

    test('Test getImageUrl', () async {
      final author = authors.first;

      expect(author.imageUrl,
          'https://images.quotable.dev/profile/400/${author.slug}.jpg');
    });

    test('Test imageUrl', () async {
      final img = authors.first.imageUrl;

      expect(() async => await Dio().get(img), throwsA(isNot(Exception())));
    });
  });
}
