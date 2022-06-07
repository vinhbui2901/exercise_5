import 'package:get/get.dart';

import '../data/product_model.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  double _total = 0;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
      _total += product.price;
    } else {
      _products[product] = 1;
      _total += product.price;
    }
    Get.snackbar('add', 'add item',
        snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
  }

  get products => _products;
  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
      _total += product.price;
    } else {
      _products[product] -= 1;
      _total += product.price;
    }
  }

  get total => _total;
}
