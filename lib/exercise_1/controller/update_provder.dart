import 'package:flutter/foundation.dart';
import 'package:flutter_exercise_5/exercise_1/data/product_model.dart';

class UpdateProvider extends ChangeNotifier {
  void updateProduct(int index, Product newProduct) {
    Product.products[index] = newProduct;
    notifyListeners();
  }
}
