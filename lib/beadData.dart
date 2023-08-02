import 'dart:convert';

class Beaddata {
  final int productId;
  final String productName;
  final double productPrice;
  final int productQty;
  final String productCategory;
  final String image;
  Beaddata({
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.productQty,
    required this.productCategory,
    required this.image,
  });

  Beaddata copyWith({
    int? productId,
    String? productName,
    double? productPrice,
    int? productQty,
    String? productCategory,
    String? image,
  }) {
    return Beaddata(
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      productPrice: productPrice ?? this.productPrice,
      productQty: productQty ?? this.productQty,
      productCategory: productCategory ?? this.productCategory,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'productName': productName,
      'productPrice': productPrice,
      'productQty': productQty,
      'productCategory': productCategory,
      'image': image,
    };
  }

  factory Beaddata.fromMap(Map<String, dynamic> map) {
    return Beaddata(
      productId: map['productId'].toInt() as int,
      productName: map['productName'] as String,
      productPrice: map['productPrice'].toDouble() as double,
      productQty: map['productQty'].toInt() as int,
      productCategory: map['productCategory'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Beaddata.fromJson(String source) => Beaddata.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Beaddata(productId: $productId, productName: $productName, productPrice: $productPrice, productQty: $productQty, productCategory: $productCategory, image: $image)';
  }

  @override
  bool operator ==(covariant Beaddata other) {
    if (identical(this, other)) return true;
  
    return 
      other.productId == productId &&
      other.productName == productName &&
      other.productPrice == productPrice &&
      other.productQty == productQty &&
      other.productCategory == productCategory &&
      other.image == image;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
      productName.hashCode ^
      productPrice.hashCode ^
      productQty.hashCode ^
      productCategory.hashCode ^
      image.hashCode;
  }
}