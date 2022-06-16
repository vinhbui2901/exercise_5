// ignore_for_file: unnecessary_string_interpolations, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/data/product_model.dart';

class Product_Detail extends StatelessWidget {
  Product_Detail({Key? key, required this.product}) : super(key: key);
  final Product product;

  List<String> _dataimg = [
    'https://icdn.dantri.com.vn/FaA3gEccccccccccccos/Image/2011/06/tht6811_a9082.jpg',
    'https://product.hstatic.net/1000030244/product/z2634271839169_ff77f96dc244dab90ba3b344aaa8a895_f23bcd0bf1e44a9eb7cd0cd6493e43ef_grande.jpg',
    'https://cdn.tgdd.vn/2022/01/CookDish/ca-lang-la-ca-gi-ca-lang-bao-nhieu-1kg-cach-phan-biet-ca-lang-avt-1200x676.jpg',
    'http://cdn.tgdd.vn/Files/2021/08/17/1375798/tong-hop-cac-loai-thit-bo-ngon-va-duoc-ua-chuong-nhat-o-viet-nam-202108171622123333.jpg',
    'https://www.fao.org.vn/wp-content/uploads/2020/07/cach-trong-rau-xa-lach.jpg',
    'https://www.hoteljob.vn/files/Anh-HTJ-Hong/cac-loai-gia-vi-thao-moc-trong-mon-au-1.jpg',
  ];
  List<String> _dataName = ['Thịt ', 'Tôm', 'Cá', 'Thịt Bò', 'Salad', 'Gia vị'];
  List<String> _count = ['1', '2', '3'];
  List<String> _recipe = [
    'Nạc bò được xay mịn, tẩm ướp cùng các gia vị theo công thức chuyên biệt, gói trong lá chuối và đem hấp hoặc luộc để cho ra thành phẩm có mùi thơm lan tỏa, kết cấu hài hòa, đặc biệt là hương vị đậm đà không lẫn vào đâu được',
    'Thịt bò mua về làm sạch, cắt nhỏ, rửa với nước đá lạnh rồi lau thật khô và cho ngay vào ngăn đông tủ lạnh trong 1 tiếng',
    'Mỡ heo làm sạch, lấy 150g cắt nhỏ rồi cho vào tủ đông đá trong 1 tiếng. Phần mỡ còn lại đem đi luộc trong 3 phút rồi vớt ra cắt hạt lựu, ướp với 1 muỗng canh đường và trộn đều.',
  ];

  bool _clickColor = true;
  bool _back = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xffdcdcdc),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xe6f9f2e6),
              ),
              child: Column(
                children: [
                  Image_Expanded(context),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 30, bottom: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Ingredients',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              // Container(
                              //   height: 80,
                              //   child: ListView.builder(
                              //     itemCount: 20,
                              //     scrollDirection: Axis.horizontal,
                              //     physics: const ScrollPhysics(),
                              //     itemBuilder:
                              //         (BuildContext context, int index) =>
                              //             SizedBox(
                              //       width: 80,
                              //       child: Container(
                              //         margin: EdgeInsets.all(5),
                              //         decoration: const BoxDecoration(
                              //           image: DecorationImage(
                              //               fit: BoxFit.cover,
                              //               image: NetworkImage(
                              //                   'https://icdn.dantri.com.vn/FaA3gEccccccccccccos/Image/2011/06/tht6811_a9082.jpg')),
                              //           borderRadius: BorderRadius.all(
                              //               Radius.circular(100)),
                              //           color: Colors.redAccent,
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              Container(
                                height: 114,
                                child: ListView.builder(
                                  itemCount: _dataimg.length,
                                  scrollDirection: Axis.horizontal,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 35.0,
                                          backgroundImage: NetworkImage(
                                              '${_dataimg[index]}'),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text('${_dataName[index]}'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Recipe',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              // Column(
                              //   crossAxisAlignment:
                              //       CrossAxisAlignment.start,
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     Container(
                              //       child: const Text(
                              //         'Recipe',
                              //         style: TextStyle(
                              //           fontSize: 16,
                              //           fontWeight: FontWeight.bold,
                              //         ),
                              //       ),
                              //     ),
                              //     //
                              //     //Decication
                              //     Container(
                              //         height: 30,
                              //         width: 30,
                              //         child: Row(children: [
                              //           Container(
                              //             alignment: Alignment.center,
                              //             color: Colors.black,
                              //             child: const AspectRatio(
                              //               aspectRatio: 1.0,
                              //               child: Text(
                              //                 '1',
                              //                 textAlign: TextAlign.center,
                              //                 style: TextStyle(
                              //                     fontSize: 16,
                              //                     fontWeight:
                              //                         FontWeight.w600,
                              //                     color: Colors.white),
                              //               ),
                              //             ),
                              //           ),
                              //           const Flexible(
                              //             child: Text(
                              //               ' Thịt dê là thực phẩm quen thuộc được dùng chế biến thành rất nhiều món ăn ngon khác nhau như dê ủ trấu, ',
                              //               overflow: TextOverflow.ellipsis,
                              //               style: TextStyle(
                              //                 color: Colors.black,
                              //               ),
                              //             ),
                              //           ),
                              //         ]))
                              //   ],
                              // ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.195,
                                child: ListView.builder(
                                  itemCount: _count.length,
                                  scrollDirection: Axis.vertical,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) => Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          color: Colors.black,
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '${_count[index]}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15, left: 15),
                                          child: Text('${_recipe[index]}'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
          ),
        ],
      ),
    );
  }

  Expanded Image_Expanded(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: Image.asset(
              'assets/images/${product.image}',
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      _back = !_back;
                      Navigator.pop(context);
                    },
                    // onPressed: () => Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => const MyCart())),
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: _back ? Colors.white : Colors.red,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xe6f9f2e6).withOpacity(0.7),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      _clickColor = !_clickColor;
                    },
                    icon: const Icon(Icons.favorite_border),
                    color: _clickColor ? Colors.white : Colors.red,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xe6f9f2e6).withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 30),
              child: Flexible(
                child: Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
