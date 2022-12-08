import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Business_Logic/Bloc/wishlist/wishlist_bloc.dart';
import '../Widgets/product_card.dart';
 List wishlistContent = [];
class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
            if (state is WishlistLoaded) {
              return SizedBox(
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
                  itemCount: state.wishList.products.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    wishlistContent = state.wishList.products;
                    return ProductCard(
                      product: state.wishList.products[index],
                      isWishlist: true,
                    );
                  },
                ),
              );
            }else {return const Text('Something went wrong');}
          },
      ),
    );
  }
}
