// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;
import 'dart:convert';

class CartsService {
  Future<List<dynamic>> fetchCarts() async {
    await Future.delayed(const Duration(seconds: 1));
    final cartsData =
        await rootBundle.rootBundle.loadString('assets/data/cart.json');
    return json.decode(cartsData) as List<dynamic>;
  }
}
