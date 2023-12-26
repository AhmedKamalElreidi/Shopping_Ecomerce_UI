class Item {
  String imgPath;
  double price;
  String name;
  Item({required this.name, required this.imgPath, required this.price});
}

final List items = [
  Item(name: "Product1", imgPath: "assets/1.png", price: 112.98),
  Item(name: "Product2", imgPath: "assets/2.png", price: 212.99),
  Item(name: "Product3", imgPath: "assets/3.png", price: 312.99),
  Item(name: "Product4", imgPath: "assets/4.png", price: 412.99),
  Item(name: "Product5", imgPath: "assets/5.png", price: 512.99),
  Item(name: "Product6", imgPath: "assets/6.png", price: 612.99),
  Item(name: "Product7", imgPath: "assets/7.png", price: 712.99),
];
