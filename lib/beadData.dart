import 'dart:convert';

class Beaddata {
  final int product_id;
  final String product_name;
  final double product_price;
  final int product_qty;
  final String product_category;
  final String image;
  Beaddata({
    required this.product_id,
    required this.product_name,
    required this.product_price,
    required this.product_qty,
    required this.product_category,
    required this.image,
  });

  Beaddata copyWith({
    int? product_id,
    String? product_name,
    double? product_price,
    int? product_qty,
    String? product_category,
    String? image,
  }) {
    return Beaddata(
      product_id: product_id ?? this.product_id,
      product_name: product_name ?? this.product_name,
      product_price: product_price ?? this.product_price,
      product_qty: product_qty ?? this.product_qty,
      product_category: product_category ?? this.product_category,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product_id': product_id,
      'product_name': product_name,
      'product_price': product_price,
      'product_qty': product_qty,
      'product_category': product_category,
      'image': image,
    };
  }

  factory Beaddata.fromMap(Map<String, dynamic> map) {
    return Beaddata(
      product_id: map['product_id'].toInt() as int,
      product_name: map['product_name'] as String,
      product_price: map['product_price'].toDouble() as double,
      product_qty: map['product_qty'].toInt() as int,
      product_category: map['product_category'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Beaddata.fromJson(String source) => Beaddata.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Beaddata(product_id: $product_id, product_name: $product_name, product_price: $product_price, product_qty: $product_qty, product_category: $product_category, image: $image)';
  }

  @override
  bool operator ==(covariant Beaddata other) {
    if (identical(this, other)) return true;
  
    return 
      other.product_id == product_id &&
      other.product_name == product_name &&
      other.product_price == product_price &&
      other.product_qty == product_qty &&
      other.product_category == product_category &&
      other.image == image;
  }

  @override
  int get hashCode {
    return product_id.hashCode ^
      product_name.hashCode ^
      product_price.hashCode ^
      product_qty.hashCode ^
      product_category.hashCode ^
      image.hashCode;
  }
}