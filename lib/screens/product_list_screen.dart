import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_list.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  bool useWrapLayout = true; // Toggle between Wrap and SingleChildScrollView with Row

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
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(
            icon: Icon(useWrapLayout ? Icons.view_column : Icons.view_list),
            onPressed: () {
              setState(() {
                useWrapLayout = !useWrapLayout;
              });
            },
          ),
        ],
      ),
      body: ProductList(products: products, useWrapLayout: useWrapLayout),
    );
  }
}
