import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_card.dart';

class ResizeToAvoidBottomInsetExample extends StatelessWidget {
  const ResizeToAvoidBottomInsetExample({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      const Product(
        imageUrl: 'https://picsum.photos/250?image=9',
        name: 'Product 1',
        price: 29.99,
      ),
      const Product(
        imageUrl: 'https://picsum.photos/250?image=10',
        name: 'Product 2',
        price: 39.99,
      ),
      const Product(
        imageUrl: 'https://picsum.photos/250?image=11',
        name: 'Product 3',
        price: 19.99,
      ),
      const Product(
        imageUrl: 'https://picsum.photos/250?image=12',
        name: 'Product 4',
        price: 49.99,
      ),
      const Product(
        imageUrl: 'https://picsum.photos/250?image=13',
        name: 'Product 5',
        price: 9.99,
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true, // Automatically resize to avoid bottom inset
      body: Wrap(
        spacing: 16.0, // Horizontal spacing between products
        runSpacing: 8.0, // Vertical spacing between rows
        children: products.map((product) => ProductCard(product: product)).toList(),
      ),
    );
  }
}
