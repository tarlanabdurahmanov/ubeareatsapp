import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/cart_model.dart';
import '../services/carts_service.dart';

final cartsProvider =
    StateNotifierProvider<CartsNotifier, AsyncValue<List<Cart>>>(
        (ref) => CartsNotifier());

class CartsNotifier extends StateNotifier<AsyncValue<List<Cart>>> {
  CartsNotifier() : super(const AsyncLoading()) {
    loadCarts();
  }

  loadCarts() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(milliseconds: 300));
    final cartsList = await CartsService().fetchCarts();
    final carts = cartsList.map((e) => Cart.fromMap(e)).toList();
    state = AsyncValue.data(carts);
    // Update state in provider
  }
}
