// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/controller/update_provder.dart';
import 'package:flutter_exercise_5/exercise_1/data/product_model.dart';
import 'package:provider/provider.dart';

class UpdataProduct extends StatelessWidget {
  UpdataProduct({Key? key, required this.product, required this.index})
      : super(key: key);
  final Product product;
  final int index;
  final TextEditingController _name = new TextEditingController();
  final TextEditingController _price = new TextEditingController();
  var _editedProduct = Product(
    id: 0,
    name: '',
    price: 0,
    image: '',
  );

  @override
  Widget build(BuildContext context) {
    _name.text = product.name;
    _price.text = product.price.toString();
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
        title: const Text('Update product'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _name,
            decoration: const InputDecoration(
                labelText: 'Enter Name', hintText: 'Enter Your Name'),
          ),
          TextField(
            controller: _price,
            decoration: const InputDecoration(
                labelText: 'Enter Pirce', hintText: 'Enter Your Pirce'),
          ),
          ElevatedButton(
              onPressed: () {
                _editedProduct = Product(
                  id: product.id,
                  name: _name.text,
                  price: double.parse(_price.text),
                  image: product.image,
                );
                Provider.of<UpdateProvider>(context, listen: false)
                    .updateProduct(index, _editedProduct);
                Navigator.pop(context);
              },
              child: const Text('Update')),
        ],
      ),
    );
  }
}
