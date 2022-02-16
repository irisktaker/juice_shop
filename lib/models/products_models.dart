import 'package:flutter/material.dart';

class ProductsModel {
  int index = 0;

  String productName;
  double productPrice;
  List<Color> bgProductColor;
  String productImage;
  String productSize;
  int qty;
  String currency;

  ProductsModel({
    required this.productName,
    required this.productPrice,
    required this.bgProductColor,
    required this.productImage,
    required this.productSize,
    this.qty = 0,
    this.currency = '₹',
  });
}