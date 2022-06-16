// ignore_for_file: camel_case_types, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/controller/cart_item.dart';
import 'package:flutter_exercise_5/exercise_1/controller/mycart_provider.dart';
import 'package:flutter_exercise_5/exercise_1/controller/update_provder.dart';

import 'package:flutter_exercise_5/update/update_product.dart';
import 'package:provider/provider.dart';
import '../../update/update_name.dart';
import '../../update/update_price.dart';
import '../data/product_model.dart';
import '../my_cart/my_cart_screen.dart';
import '../product_detail/detail_screen.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyCart()));
                  },
                  icon: const Icon(Icons.shopping_cart),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 9,
                    child: Consumer<CartProvider>(builder: (_, snap, __) {
                      return Text('${snap.myCartListItems.length}');
                    })),
              ),
            ],
          ),
        ],
      ),
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
                childAspectRatio: 0.62,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                print('đfdfd');
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product_Detail(
                                  product: Product.products[index],
                                )));
                  },
                  child: Container(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    color: Colors.white,
                    child: Stack(children: [
                      Column(
                        children: [
                          Image.asset(
                              'assets/images/${Product.products[index].image}'),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: UpdateName(index: index),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => UpdataProduct(
                                                product:
                                                    Product.products[index],
                                                index: index,
                                              )));
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.red,
                                ),
                                iconSize: 20,
                              ),
                            ],
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
                              UpdatePrice(index: index),
                              IconButton(
                                onPressed: () {
                                  Provider.of<CartProvider>(context,
                                          listen: false)
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
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
