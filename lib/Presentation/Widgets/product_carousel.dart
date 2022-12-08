import 'package:flutter/material.dart';

import '../../Data/Model/model.dart';
import 'widget.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;

  const ProductCarousel({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
        // height: 285,
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              childAspectRatio: 0.67,
            ),
            itemCount: products.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index],isWishlist: false,);
            }));
  }
}
