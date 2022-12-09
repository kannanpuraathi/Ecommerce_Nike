import 'package:ecom_app/Presentation/Widgets/landscapeproduct_card.dart';
import 'package:flutter/material.dart';
import '../../Data/Model/model.dart';
import 'widget.dart';
class LandscapeCarousel extends StatelessWidget {
  final List<Product> products;
  const LandscapeCarousel({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return LandscapeProductCard(product: products[index]);
            })
    );
  }
}
