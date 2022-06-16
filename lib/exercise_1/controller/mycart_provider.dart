import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/controller/cart_item.dart';
import 'package:flutter_exercise_5/exercise_1/data/product_model.dart';

class CartProvider extends ChangeNotifier {
  final _cartItem = <CartItem>[];

  List<CartItem> get myCartListItems => _cartItem;
  void addProduct(Product pd, [int index = 1]) {
    bool productExisted = false;
    for (CartItem cartItem in _cartItem) {
      if (cartItem.product.id == pd.id) {
        cartItem.changeQuantity(index);
        productExisted = true;
        break;
      }
    }
    if (!productExisted) {
      _cartItem.add(CartItem(product: pd));
    }

    notifyListeners();
  }

  void changeProductNumber(int cartId, int productNumber) {
    for (CartItem cartItem in _cartItem) {
      if (cartItem.id == cartId) {
        cartItem.changeQuantity(productNumber);
        break;
      }
    }
  }

  void removeCartItem(CartItem cartItem) {
    _cartItem.removeWhere((element) => element.id == cartItem.id);
    notifyListeners();
  }

  double get totalPrice {
    double total = 0;
    for (CartItem cartItem in _cartItem) {
      total += cartItem.total;
    }
    return total;
  }
}
