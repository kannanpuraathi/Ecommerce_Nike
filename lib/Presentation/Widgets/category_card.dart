import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Data/Model/model.dart';
import '../Screens/screens.dart';

class CategoryCard extends StatelessWidget {
  final Categories categories;

  const CategoryCard({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == categories.name)
        .toList();
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Image.asset(
                'Assets/whitebg.png',
                fit: BoxFit.fill,
                color: Colors.white,
                //width: 1000,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Stack(
                    children: [
                      Container(
                        height: 170,
                        width: double.infinity,
                        color: Colors.cyan,
                        child: Image.network(
                          categories.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 1,
                          right: 10,
                          child: Text(
                            categories.name,
                            style: GoogleFonts.raleway(
                                fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 5),
                          transitionsBuilder: (context,animation,animationTime, child)
                          {
                           // animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
                            return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                            child: child,);
                          },
                          pageBuilder: (context,animation,animationTime){
                            print(categoryProducts);
                            return CatalogScreen(
                              catalog: categories.name,
                              titleicon: false,
                              cataloglist: categoryProducts,
                            );
                          }),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
