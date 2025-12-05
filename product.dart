class Product {
  String id;
  String name;
  String description;
  double price;
  String? imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'description': description,
    'price': price,
    'imageUrl': imageUrl,
  };

  factory Product.fromMap(Map<String, dynamic> m) => Product(
    id: m['id'] ?? '',
    name: m['name'] ?? '',
    description: m['description'] ?? '',
    price: (m['price'] ?? 0).toDouble(),
    imageUrl: m['imageUrl'],
  );
}
