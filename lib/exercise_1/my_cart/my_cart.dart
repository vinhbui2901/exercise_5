// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/get_controller.dart';
import 'cart_product_cart.dart';

class MyCart extends StatelessWidget {
  final CartController controller = Get.find();
  MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Obx(
        () => Stack(alignment: AlignmentDirectional.bottomStart, children: [
          Container(
            color: const Color(0xffdcdcdc),
          ),
          ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCart(
                controller: controller,
                product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
                index: index,
              );
            },
          ),
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
                        Text('Checkout Price:'),
                        Text('${controller.total}'),
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
        ]),
      ),
      // bottomNavigationBar: bottomContainer(),
    );
  }
}
