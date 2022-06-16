import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/controller/mycart_provider.dart';
import 'package:flutter_exercise_5/exercise_1/my_cart/widget/cart_item.dart';
import 'package:provider/provider.dart';

class CartListScreen extends StatelessWidget {
  const CartListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Consumer<CartProvider>(
      builder: (_, data, child) {
        print('build 01');
        return ListView.builder(
          itemCount: data.myCartListItems.length,
          itemBuilder: (context, int index) {
            var cart = data.myCartListItems[index];
            return ChangeNotifierProvider.value(
              value: cart,
              child: const CartItemWidget(),
            );
          },
        );
      },
    );
  }
}
