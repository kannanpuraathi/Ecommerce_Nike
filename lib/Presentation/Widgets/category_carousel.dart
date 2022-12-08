import 'package:flutter/material.dart';

import '../../Data/Model/model.dart';
import 'widget.dart';

class CategoryCarousel extends StatelessWidget {
  final List<Categories> categories;

  const CategoryCarousel({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 1),
            shrinkWrap: true,
            itemCount: categories.length,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return CategoryCard(categories: categories[index]);
            }));
  }
}
