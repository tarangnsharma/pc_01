import 'package:flutter/material.dart';
import 'package:pc_01/widgets/resize_to_avoid_bottom_inset_example.dart';
import 'package:pc_01/widgets/single_child_scroll_view_example.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  ProductListScreenState createState() => ProductListScreenState();
}

class ProductListScreenState extends State<ProductListScreen> {
  bool useSingleChildScrollView = true; // Toggle between using SingleChildScrollView or not

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          IconButton(
            icon: Icon(useSingleChildScrollView ? Icons.view_list : Icons.view_module),
            onPressed: () {
              setState(() {
                useSingleChildScrollView = !useSingleChildScrollView;
              });
            },
          ),
        ],
      ),
      body: useSingleChildScrollView 
          ? const SingleChildScrollViewExample()
          : const ResizeToAvoidBottomInsetExample(),
    );
  }
}
