import 'package:flutter/material.dart';

import '../models/products_models.dart';

class Singleton {
  Singleton();

  static final Singleton instance = Singleton(); 

  List<ProductsModel> smoothiesList = [
    ProductsModel(
      productName: 'watermelon juice',
      productPrice: 39.00,
      bgProductColor: const [Color(0xFFF26C9C), Color(0xFFEC90E9)],
      productImage: 'assets/images/Group 2137.png',
      productSize: '200ml',
    ),
    ProductsModel(
      productName: 'mango juice',
      productPrice: 44.00,
      bgProductColor: const [Color(0xFFFD9B8D), Color(0xFFFBBE7E)],
      productImage: 'assets/images/Group 2204.png',
      productSize: '200ml',
    ),
    ProductsModel(
      productName: 'blueberry juice',
      productPrice: 60.00,
      bgProductColor: const [Color(0xFFA076E8), Color(0xFFB1C4F8)],
      productImage: 'assets/images/Group 2206.png',
      productSize: '200ml',
    ),
    ProductsModel(
      productName: 'avocado juice',
      productPrice: 60.00,
      bgProductColor: const [Color(0xFF5CCD92), Color(0xFFBFE89C)],
      productImage: 'assets/images/Group 2207.png',
      productSize: '200ml',
    ),
    ProductsModel(
      productName: 'grape juice',
      productPrice: 65.00,
      bgProductColor: const [Color(0xFFA86FDA), Color(0xFFF5B9D5)],
      productImage: 'assets/images/Group 2208.png',
      productSize: '200ml',
    ),
    ProductsModel(
      productName: 'apple',
      productPrice: 49.00,
      bgProductColor: const [Color(0xFFF4787C), Color(0xFFFBA6C6)],
      productImage: 'assets/images/apple.png',
      productSize: '10 pieces',
    ),
    ProductsModel(
      productName: 'watermelon',
      productPrice: 16.00,
      bgProductColor: const [Color(0xFFF26C9C), Color(0xFFEC90E9)],
      productImage: 'assets/images/watermelon.png',
      productSize: '1 pieces',
    ),
    ProductsModel(
      productName: 'mango',
      productPrice: 19.00,
      bgProductColor: const [Color(0xFFFD9B8D), Color(0xFFFBBE7E)],
      productImage: 'assets/images/mango.png',
      productSize: '7 pieces',
    ),
    ProductsModel(
      productName: 'blueberry',
      productPrice: 99.00,
      bgProductColor: const [Color(0xFFA076E8), Color(0xFFB1C4F8)],
      productImage: 'assets/images/blueberry.png',
      productSize: '100 pieces',
    ),
    ProductsModel(
      productName: 'avocado',
      productPrice: 48.00,
      bgProductColor: const [Color(0xFF5CCD92), Color(0xFFBFE89C)],
      productImage: 'assets/images/avocado.png',
      productSize: '3 pieces',
    ),
    ProductsModel(
      productName: 'grapes',
      productPrice: 99.00,
      bgProductColor: const [Color(0xFFA86FDA), Color(0xFFF5B9D5)],
      productImage: 'assets/images/grapes.png',
      productSize: '100 pieces',
    ),
    ProductsModel(
      productName: 'apple',
      productPrice: 70.00,
      bgProductColor: const [Color(0xFFF4787C), Color(0xFFFBA6C6)],
      productImage: 'assets/images/apple.png',
      productSize: '10 pieces',
    ),
  ];
}