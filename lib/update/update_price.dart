import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../exercise_1/controller/update_provder.dart';
import '../exercise_1/data/product_model.dart';

class UpdatePrice extends StatelessWidget {
  const UpdatePrice({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    print('price');
    context.watch<UpdateProvider>();
    return Text(
      '\$${Product.products[index].price}',
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}
