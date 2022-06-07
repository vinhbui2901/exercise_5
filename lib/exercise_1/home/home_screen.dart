// ignore_for_file: camel_case_types, avoid_unnecessary_containers
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controller/get_controller.dart';
import '../data/product_model.dart';
import '../my_cart/my_cart.dart';

class Home_Screen extends StatelessWidget {
  Home_Screen({Key? key}) : super(key: key);
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Stack(
          children: [
            Container(
              color: const Color(0xffdcdcdc),
            ),
            GridView.builder(
              itemCount: Product.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  color: Colors.white,
                  child: Stack(children: [
                    Column(
                      children: [
                        Image.asset(
                            'assets/images/${Product.products[index].image}'),
                        const SizedBox(height: 5),
                        Flexible(
                          child: Text(
                            Product.products[index].name,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'price:',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '\$${Product.products[index].price}',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                cartController
                                    .addProduct(Product.products[index]);
                              },
                              icon: const Icon(
                                Icons.shopping_cart,
                                color: Colors.red,
                              ),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Home'),
      backgroundColor: Colors.red,
      actions: <Widget>[
        Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Get.to(() => MyCart()),
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 9,
                child: Text('1'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
