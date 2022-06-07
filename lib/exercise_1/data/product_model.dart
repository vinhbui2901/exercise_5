class Product {
  final String name;
  final double price;
  final String image;
  Product({
    required this.name,
    required this.price,
    required this.image,
  });

  static List<Product> products = [
    Product(name: "giay", price: 150, image: "02.png"),
    Product(name: "ao", price: 250, image: "03.png"),
    Product(name: "QUẦN", price: 350, image: "04.png"),
    Product(name: "ao", price: 200, image: "05.png"),
    Product(name: "dép", price: 100, image: "06.png"),
    Product(name: "túi", price: 450, image: "07.png"),
    Product(name: "giay", price: 150, image: "08.png"),
    Product(name: "túi", price: 350, image: "01.png"),
  ];
}
