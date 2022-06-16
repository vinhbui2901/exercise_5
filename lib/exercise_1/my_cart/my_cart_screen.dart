// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/controller/mycart_provider.dart';
import 'package:flutter_exercise_5/exercise_1/my_cart/widget/cart_list_screen.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('object');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('My Cart'),
      ),
      body: Container(
        child: Stack(
          // alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              color: const Color(0xffdcdcdc),
            ),
            const CartListScreen(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 90,
                width: double.infinity,
                color: const Color.fromARGB(255, 199, 196, 196),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text('Checkout Price:'),
                          Consumer<CartProvider>(builder: (_, snap, __) {
                            return Text('${snap.totalPrice}');
                          }),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Checkout'),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
