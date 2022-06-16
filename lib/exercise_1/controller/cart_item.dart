import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_exercise_5/exercise_1/data/product_model.dart';

class CartItem extends ChangeNotifier {
  final int _id;
  final Product product;
  int _quantity = 1;
  void changeQuantity(int quantity) {
    _quantity += quantity;
    notifyListeners();
  }

  int get id => _id;
  double get total => product.price * _quantity;
  int get quantity => _quantity;
  CartItem({required this.product}) : _id = Random().nextInt(100);
}
