// ignore_for_file: file_names, unnecessary_import,, non_constant_identifier_names, must_be_immutable
// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dish.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  List<Dish> dishlist = [
    Dish('02.png', 'Giầy', 200, 1),
    Dish('03.png', 'Áo', 300, 1),
    Dish('04.png', 'Quần', 400, 1),
    Dish('05.png', 'ao', 500, 1),
    Dish('06.png', 'Dép', 600, 1),
    Dish('07.png', 'Túi', 100, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          color: Color(0xffdcdcdc),
        ),
        ListView.separated(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          itemCount: dishlist.length,
          itemBuilder: (context, index) {
            final dish = dishlist[index];
            return listItem(
              img: dish.img,
              item: dish.item,
              price: dish.price,
              count: dish.count,
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 15,
          ),
        ),
      ],
    );
  }
}

class Dish {
  final String img;
  final String item;
  final double price;
  final int count;
  Dish(
    this.img,
    this.item,
    this.price,
    this.count,
  );
}
