import 'package:ecom_app/Business_Logic/Bloc/wishlist/wishlist_bloc.dart';
import 'package:ecom_app/Data/Model/model.dart';
import 'package:ecom_app/Presentation/Screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isWishlist;

  const ProductCard({Key? key, required this.product, required this.isWishlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: <Widget>[
            Image.asset(
              'Assets/whitebg.png',
              fit: BoxFit.cover,
              color: Colors.white,
              //width: 1000,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 40,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 30,
                        ),
                      ),
                    ),
                    onTap: () {
                      //
                      //
                      //
                    },
                  ),
                  isWishlist
                      ? InkWell(
                          child: BlocBuilder<WishlistBloc, WishlistState>(
                            builder: (context, state) {
                              return Container(
                                height: 40,
                                width: 40,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                child: const Center(
                                  child: Icon(
                                    Icons.delete,
                                    size: 30,
                                  ),
                                ),
                              );
                            },
                          ),
                          onTap: () {
                            context.read<WishlistBloc>().add(RemoveWishlistProduct(product:product));
                            final snackBar = const SnackBar(
                              content: Text(
                                'Removed from Wishlist',
                                style: TextStyle(fontSize: 17),
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                        )
                      : const SizedBox()
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    //color: Colors.cyan,
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 5),
                          transitionsBuilder:
                              (context, animation, animationTime, child) {
                            // animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
                            return ScaleTransition(
                              alignment: Alignment.center,
                              scale: animation,
                              child: child,
                            );
                          },
                          pageBuilder: (context, animation, animationTime) {
                            return ProductScreen(
                              product: product,
                            );
                          }),
                    );
                  },
                ),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(5),
                  height: 45,
                  width: 170,
                  child: Text(
                    product.name,
                    style:
                        GoogleFonts.raleway(fontSize: 17, color: Colors.black),
                  ),
                ),
                Container(
                  //  color: Colors.red,
                  padding: const EdgeInsets.only(left: 8, top: 5),
                  height: 40,
                  width: 150,
                  //color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                  child: Text(
                    '₹ ${product.price.toString()}',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
