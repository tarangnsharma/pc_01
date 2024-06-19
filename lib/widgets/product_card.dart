import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 18, // Adjust width for tablets
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), // Add margin to avoid clumping
      child: Card(
        child: Column(
          children: [
            // Display network image using Image.network
            Image.network(
              product.imageUrl,
              fit: BoxFit.cover, // Adjust image fit as needed
              height: 200, // Set image height (adjust as needed)
              errorBuilder: (context, error, stackTrace) {
                return const Center(child: Text('Error loading image')); // Placeholder for failed images
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.name),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('\$${product.price.toStringAsFixed(2)}'), // Display price with 2 decimal places
            ),
          ],
        ),
      ),
    );
  }
}
