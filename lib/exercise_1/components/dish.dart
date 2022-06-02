// ignore_for_file: file_names, unnecessary_import,, non_constant_identifier_names, camel_case_types, prefer_final_fields
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class listItem extends StatefulWidget {
  const listItem(
      {Key? key,
      required this.img,
      required this.item,
      required this.price,
      required this.count})
      : super(key: key);

  final String img;
  final String item;
  final double price;
  final int count;

  @override
  State<listItem> createState() => _listItemState();
}

final Counter counter = Get.put(Counter());

class _listItemState extends State<listItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18.0),
                topLeft: Radius.circular(18.0),
              ),
              child: Image.asset('assets/images/${widget.img}'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        // ignore: unnecessary_string_interpolations
                        '${widget.item}',
                        overflow: TextOverflow.ellipsis,

                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Price:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$${widget.price}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sub Total:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Text(
                          '${widget.price * counter._Counter.value}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xfff57c00),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Free Ship',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xfff57c00),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            color: Color(0xffd32f2f),
                            onPressed: () => counter.subtraction(),
                          ),
                          SizedBox(
                            height: 40,
                            width: 32,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Obx(
                                () => Text(
                                  '${counter._Counter}',
                                  style: TextStyle(
                                    color: Color(0xff092232),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
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
                            icon: Icon(
                              Icons.add,
                            ),
                            color: Color(0xff66bb6a),
                            onPressed: () => counter.add(),
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
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
    );
  }
}

class Counter extends GetxController {
  RxInt _Counter = 0.obs;

  add() {
    _Counter.value++;
  }

  subtraction() {
    if (_Counter.value <= 0) {
      Get.snackbar(
        'Cart',
        ' Bạn không thể chọn sản phẩm dưới 0',
        barBlur: 20,
        duration: Duration(seconds: 3),
      );
    } else {
      _Counter.value--;
    }
  }
}
