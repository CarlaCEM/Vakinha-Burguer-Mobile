// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:vakinha_burguer_mobile/app/models/product_model.dart';

class ShoppingCardModel {
  int quantity;
  ProductModel product;
  
  ShoppingCardModel({
    required this.quantity,
    required this.product,
  });
}
