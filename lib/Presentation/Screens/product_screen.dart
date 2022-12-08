import 'package:ecom_app/Presentation/Widgets/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../Data/Model/model.dart';
import '../../Data/Utils/color_util.dart';
import '../Widgets/widget.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  discount() {
    double discount = (product.mrp / product.price) * 10;
    return discount.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
        title: SizedBox(
          height: 90,
          width: 80,
          child: IconButton(
            onPressed: () {
              if (value) {
                value = false;
              } else if (!value) {
                value = true;
              }
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);
              provider.toggleTheme(value);
            },
            icon: Image.asset(
              'Assets/nike.png',
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 400,
                width: double.infinity,
                // color: Colors.black,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               FavoriteButton(product: product,),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              product.name,
              style: GoogleFonts.raleway(
                  fontSize: 25,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '₹ ${product.price.toString()}',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 28,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).scaffoldBackgroundColor),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '₹ ${product.mrp.toString()}',
                  style: GoogleFonts.aBeeZee(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(.5)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  '(${discount()}%)',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.redAccent),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Size',
                      style: GoogleFonts.raleway(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 10),
                    child: Text(
                      'UK',
                      style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                  ),
                ],
              ),
              Container(
                  //color: Colors.purple,
                  padding: const EdgeInsets.all(5),
                  height: 75,
                  child: SizeButton(sizelist: product.size)),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ElevatedButtonWidget(title: 'Add to cart'),
              ElevatedButtonWidget(title: 'Buy now'),
            ],
          )
        ],
      ),
    );
  }
}
