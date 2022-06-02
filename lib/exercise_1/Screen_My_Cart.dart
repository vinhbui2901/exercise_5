// ignore_for_file: file_names, unnecessary_import
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/components/body.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        // body: Demo(),
        bottomNavigationBar: bottomContainer());
  }

  Container bottomContainer() {
    return Container(
        height: 90,
        width: double.infinity,
        color: Color.fromARGB(255, 199, 196, 196),
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text('Checkout Price:'),
                  Text('Rs.5000'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Checkout'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                ),
              )
            ])));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.red,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
        ),
      ),
      title: Text('My Cart'),
    );
  }
}
