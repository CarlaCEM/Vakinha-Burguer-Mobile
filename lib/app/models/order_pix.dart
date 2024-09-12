import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class OrderPix {
  String image;
  String code;
  double totalValue;
  
    OrderPix({
    required this.image,
    required this.code,
    required this.totalValue
  });

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'code': code,
      'totalValue': totalValue,
    };
  }

  factory OrderPix.fromMap(Map<String, dynamic> map) {
    return OrderPix(
      image: map['image'] ?? '',
      code: map['code'] ?? '',
      totalValue: map['totalValue']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderPix.fromJson(String source) => OrderPix.fromMap(json.decode(source) as Map<String, dynamic>);
  OrderPix copyWith({
    String? image,
    String? code,
    double? totalValue    
  }) {
    return OrderPix(
          image: image ?? this.image,
      code: code ?? this.code,
      totalValue: totalValue ?? this.totalValue
    );
  }
}
