// product_model.dart
class Product {
  final String id;
  final String name;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  // Convert a Product into a Map.
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'price': price, 'imageUrl': imageUrl};
  }

  // Create a Product from a Map.
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as String,
      name: map['name'] as String,
      price: (map['price'] as num).toDouble(),
      imageUrl: map['imageUrl'] as String,
    );
  }
}
