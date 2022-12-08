import 'package:ecom_app/Presentation/Pages/favorite_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Business_Logic/Bloc/wishlist/wishlist_bloc.dart';
import '../../Data/Model/product_model.dart';

class FavoriteButton extends StatefulWidget {
  final Product product;

  const FavoriteButton({Key? key, required this.product}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool value = false;

  void changeIndex(bool val) {
    setState(() {
      value = val;
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 20,
      child: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          return IconButton(
            icon: const Icon(
              Icons.favorite,
              size: 40,
            ),
            onPressed: () {
              if (value) {
                changeIndex(false);
                context.read<WishlistBloc>().add(RemoveWishlistProduct(product:widget.product));
                const snackBar = SnackBar(
                  content: Text(
                    'Removed from Wishlist',
                    style: TextStyle(fontSize: 17),
                  ),
                  duration: Duration(milliseconds: 300),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else if (!value) {
                changeIndex(true);
                context
                    .read<WishlistBloc>()
                    .add(AddWishlistProduct(product: widget.product));
                const snackBar = SnackBar(
                  content: Text(
                    'Added to your Wishlist',
                    style: TextStyle(fontSize: 17),
                  ),
                  duration: Duration(milliseconds: 300),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar,);
                print(wishlistContent);
              }

            },
            color: value == false ? Colors.grey : Colors.red,
          );
        },
      ),
    );
  }
}
