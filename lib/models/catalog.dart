class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
    id: " C0001",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12",
    price: 999,
    color: "#33505a",
    image: "https://unsplash.com/photos/iOyJ7xCXLig",
  )
];
