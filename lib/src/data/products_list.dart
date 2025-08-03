

class FoodItem {
  final String assetPath;
  final String title;
  final String sectitle;
  final String price;
  final String likes;
  final String? ingriedents; //Ingriedents list
  final String? description;
  final String? reviews;
  final String? id;

  const FoodItem({
    required this.assetPath,
    required this.title,
    required this.sectitle,
    required this.price,
    required this.likes,
    this.reviews,
    this.ingriedents,
    this.description,
    this.id,
  });
}

const List<FoodItem> FoodItems = [
  FoodItem(
    id: 'item_1',
    assetPath: 'assets/images/graphics/cupkake_cat.png',
    title: "Mogli's Cup",
    sectitle: "Strawberry ice cream",
    price: "₳ 8.99",
    likes: "200"
  ),
  FoodItem(
    id: 'item_2',
    assetPath: 'assets/images/graphics/icecream.png',
    title: "Balu's Cup",
    sectitle: "Pistachio ice cream",
    price: "₳ 8.99",
    likes: "165"
  ),
  FoodItem(
    id: 'item_3',
    assetPath: 'assets/images/graphics/icecream_stick.png',
    title: "Smiling David",
    sectitle: "Coffee ice cream",
    price: "₳ 3.99",
    likes: "310"
  ),
  FoodItem(
    id: 'item_4',
    assetPath: 'assets/images/graphics/icecream_cone.png',
    title: "Kai in a Cone",
    sectitle: "Vanilla ice cream",
    price: "₳ 3.99",
    likes: "290"
  ),
];