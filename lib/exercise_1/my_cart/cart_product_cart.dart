// // ignore_for_file: unnecessary_brace_in_string_interps

// import 'package:flutter/material.dart';

// import '../controller/get_controller.dart';
// import '../data/product_model.dart';

// class CartProductCart extends StatelessWidget {
//   final CartController controller;
//   final Product product;
//   final int quantity;
//   final int index;
//   const CartProductCart(
//       {Key? key,
//       required this.controller,
//       required this.product,
//       required this.quantity,
//       required this.index})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Container(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               flex: 1,
//               child: ClipRRect(
//                 borderRadius: const BorderRadius.only(
//                   bottomLeft: Radius.circular(18.0),
//                   topLeft: Radius.circular(18.0),
//                 ),
//                 child: Image.asset('assets/images/${product.image}'),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   left: 15,
//                 ),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Flexible(
//                           child: Text(
//                             product.name,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 15,
//                         ),
//                         IconButton(
//                           onPressed: () {
//                             // AlertDialog(
//                             //     title: Text("Notification"),
//                             //     content: Text(
//                             //         "Are you sure you want to remove the product from the cart?"),
//                             //     actions: [
//                             //       TextButton(
//                             //           onPressed: () {}, child: Text('cancel')),
//                             //       TextButton(
//                             //           onPressed: () {
//                             //             controller.removeProduct(product);
//                             //           },
//                             //           child: Text('Ok')),
//                             //     ]);
//                             controller.removeProduct(product);
//                           },
//                           icon: const Icon(Icons.delete),
//                           color: Colors.red,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: [
//                         const Text(
//                           'Price:',
//                           style: TextStyle(
//                             fontSize: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           '${product.price}',
//                           style: const TextStyle(
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         const Text(
//                           'Sub Total:',
//                           style: TextStyle(
//                             fontSize: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           '${quantity * product.price}',
//                           style: const TextStyle(
//                             fontSize: 16,
//                             color: Color(0xfff57c00),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         const Text(
//                           'Free Ship',
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Color(0xfff57c00),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 10,
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               icon: const Icon(Icons.remove),
//                               color: const Color(0xffd32f2f),
//                               onPressed: () {
//                                 controller.removeProduct(product);
//                               },
//                             ),
//                             SizedBox(
//                               height: 40,
//                               width: 32,
//                               child: OutlinedButton(
//                                 onPressed: () {},
//                                 child: Text(
//                                   '${quantity}',
//                                   style: const TextStyle(
//                                     color: Color(0xff092232),
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                                 style: ButtonStyle(
//                                   shape: MaterialStateProperty.all<
//                                       RoundedRectangleBorder>(
//                                     RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(8.0),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             IconButton(
//                                 icon: const Icon(
//                                   Icons.add,
//                                 ),
//                                 color: const Color(0xff66bb6a),
//                                 onPressed: () {
//                                   controller.addProduct(product);
//                                 }),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         decoration: const BoxDecoration(
//           color: Color.fromARGB(255, 255, 255, 255),
//           borderRadius: BorderRadius.all(
//             Radius.circular(18.0),
//           ),
//         ),
//       ),
//     ]);
//   }
// }
