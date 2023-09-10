import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ubereatsapp/screens/widgets/cart/cart_app_bar.dart';
import 'package:ubereatsapp/screens/widgets/cart/cart_empty.dart';
import 'package:ubereatsapp/screens/widgets/cart/cart_item.dart';
import '../models/cart_model.dart';
import '../providers/carts_provider.dart';
import '../utils/text.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartsProvider);

    return Scaffold(
      appBar: const CartAppBarWidget(),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        child: cartAsync.when(
          data: (data) {
            return data.isNotEmpty ? _cartList(data) : const CartEmptyWidget();
          },
          error: (_, __) {
            return Center(
                child: defaultText("Error Data...", color: Colors.red));
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(color: Colors.black),
            );
          },
        ),
      ),
    );
  }

  ListView _cartList(List<Cart> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 5.h),
          child: CartItemWidget(cart: data[index]),
        );
      },
    );
  }
}
