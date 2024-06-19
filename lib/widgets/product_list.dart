import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_card.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  final bool useWrapLayout;

  const ProductList({super.key, required this.products, required this.useWrapLayout});

  @override
  Widget build(BuildContext context) {
    if (useWrapLayout) {
      return SingleChildScrollView(
        child: Wrap(
          spacing: 16.0, // Horizontal spacing between products
          runSpacing: 8.0, // Vertical spacing between rows
          children: products.map((product) => ProductCard(product: product)).toList(),
        ),
      );
    } else {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: products.map((product) => ProductCard(product: product)).toList(),
        ),
      );
    }
  }
}
