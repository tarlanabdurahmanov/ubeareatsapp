// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cart {
  final String image;
  final String title;
  final int item;
  final double price;

  Cart({
    required this.image,
    required this.title,
    required this.item,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'title': title,
      'item': item,
      'price': price,
    };
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      image: map['image'],
      title: map['title'],
      item: map['item'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  Cart copyWith({
    String? image,
    String? title,
    int? item,
    double? price,
  }) {
    return Cart(
      image: image ?? this.image,
      title: title ?? this.title,
      item: item ?? this.item,
      price: price ?? this.price,
    );
  }
}
