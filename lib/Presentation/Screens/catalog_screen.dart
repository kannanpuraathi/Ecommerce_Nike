import 'package:ecom_app/Data/Model/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../Data/Utils/color_util.dart';
import '../Widgets/widget.dart';

class CatalogScreen extends StatelessWidget {
  final String catalog;
  final bool titleicon;
  final List <Product> cataloglist;

  const CatalogScreen({
    Key? key,
    required this.catalog, required this.titleicon, required this.cataloglist,
  }) : super(key: key);
  static const String routeName = '/catalog';

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
        title: titleicon  ?SizedBox(
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
        )
            :  Text(catalog,style:GoogleFonts.raleway(color: Theme.of(context).scaffoldBackgroundColor),),
      ),
      body: ProductCarousel(products: cataloglist,),
    );
  }
}
