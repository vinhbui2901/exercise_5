import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/controller/cart_item.dart';
import 'package:flutter_exercise_5/exercise_1/controller/mycart_provider.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build cart item');
    // var cartItem = context.watch<CartItem>();
    // var product = cartItem.product;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(18.0),
                  topLeft: Radius.circular(18.0),
                ),
                child: Selector<CartItem, String>(
                    selector: (_, cartItem) => cartItem.product.image,
                    builder: (_, image, __) {
                      return Image.asset(
                        'assets/images/${image}',
                        height: 140,
                        fit: BoxFit.fill,
                      );
                    }),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            child: Selector<CartItem, String>(
                                selector: (_, cartItem) =>
                                    cartItem.product.name,
                                builder: (_, name, __) {
                                  return Text(
                                    name,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  );
                                })),
                        const SizedBox(
                          width: 15,
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      title: const Text("Notification"),
                                      content: const Text(
                                          "Are you sure you want to remove the product from the cart?"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('cancel')),
                                        TextButton(
                                            onPressed: () async {
                                              final cartItem =
                                                  context.read<CartItem>();
                                              Provider.of<CartProvider>(context,
                                                      listen: false)
                                                  .removeCartItem(cartItem);
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Ok')),
                                      ]);
                                });
                          },
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Price:',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Selector<CartItem, double>(
                            selector: (_, cartItem) => cartItem.product.price,
                            builder: (_, price, __) {
                              return Text(
                                '${price}',
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              );
                            })
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Sub Total:',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Selector<CartItem, double>(
                            selector: (_, cartItem) => cartItem.total,
                            builder: (_, total, __) {
                              return Text(
                                '${total}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xfff57c00),
                                ),
                              );
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'Free Ship',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xfff57c00),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              color: const Color(0xffd32f2f),
                              onPressed: () {
                                final cartItem = context.read<CartItem>();

                                if (cartItem.quantity > 1) {
                                  Provider.of<CartProvider>(context,
                                          listen: false)
                                      .changeProductNumber(cartItem.id, -1);
                                }
                              },
                            ),
                            SizedBox(
                              height: 40,
                              width: 32,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Selector<CartItem, int>(
                                  selector: (_, cartItem) => cartItem.quantity,
                                  builder: (_, quantity, __) {
                                    return Text(
                                      '${quantity}',
                                      style: const TextStyle(
                                        color: Color(0xff092232),
                                      ),
                                      textAlign: TextAlign.center,
                                    );
                                  },
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.add,
                              ),
                              color: const Color(0xff66bb6a),
                              onPressed: () {
                                final cartItem = context.read<CartItem>();

                                Provider.of<CartProvider>(context,
                                        listen: false)
                                    .changeProductNumber(cartItem.id, 1);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
