import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final int id;
  final String name;
  final double price;
  final String image;
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  static List<Product> products = [
    Product(id: 1, name: "giay", price: 150, image: "02.png"),
    Product(id: 2, name: "ao", price: 250, image: "03.png"),
    Product(id: 3, name: "QUẦN", price: 350, image: "04.png"),
    Product(id: 4, name: "ao", price: 200, image: "05.png"),
    Product(id: 5, name: "dép", price: 100, image: "06.png"),
    Product(id: 6, name: "túi", price: 450, image: "07.png"),
    Product(id: 7, name: "giay", price: 150, image: "08.png"),
    Product(id: 8, name: "túi", price: 350, image: "01.png"),
  ];
}
