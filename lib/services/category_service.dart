// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert';

class CategoryService {
  Future<List<dynamic>> fetchCategory() async {
    await Future.delayed(const Duration(seconds: 1));
    final categoryData =
        await rootBundle.rootBundle.loadString('assets/data/category.json');
    return json.decode(categoryData) as List<dynamic>;
  }
}
