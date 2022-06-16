import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/data/product_model.dart';
import 'package:provider/provider.dart';

import '../exercise_1/controller/update_provder.dart';

class UpdateName extends StatelessWidget {
  const UpdateName({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    print('name');
    context.watch<UpdateProvider>();
    return Text(
      Product.products[index].name,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
