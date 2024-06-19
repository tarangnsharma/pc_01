import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_list.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

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
      body: ProductList(products: products),
    );
  }
}
