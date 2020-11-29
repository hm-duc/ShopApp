import 'package:flutter/material.dart';
import 'package:shop_app/widgets/product_item.dart';
import '../models/product.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> listProduct = [
    Product(
      id: 'p1',
      name: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        name: 'HeadPhone',
        description: 'A nice pair of headphone.',
        price: 39.99,
        imageUrl: 'https://elcopcbonline.com/photos/product/4/176/4.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: listProduct.length,
        itemBuilder: (ctx, index) => ProductItem(
          id: listProduct[index].id,
          name: listProduct[index].name,
          imageUrl: listProduct[index].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
