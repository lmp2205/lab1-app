class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });

  CartItem copyWith({
    String? id,
    String? title,
    int? quantify,
    double? price, required int quantity,
  }) {
    return CartItem(
        id: id ?? this.id,
        title: title ?? this.title,
        quantity: quantify ?? this.quantity,
        price: price ?? this.price);
  }
}
