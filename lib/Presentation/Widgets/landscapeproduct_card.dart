import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Data/Model/model.dart';
import '../Screens/screens.dart';
class LandscapeProductCard extends StatelessWidget {
  final Product product;
  const LandscapeProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),color: Colors.white,),
            height: 150,
            width: MediaQuery.of(context).size.width/1.2,
            margin:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                //  color: Colors.cyan,
                  child:
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Image.network(product.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.only(top:10,left: 10),
                      height: 100,
                      width: 170,
                      child: Text(
                        product.name,
                        style: GoogleFonts.raleway(fontSize: 25,color: Colors.black),
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
                            fontSize: 20, fontWeight: FontWeight.normal,color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      onTap: (){
        Navigator.push(
          context,
          PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 5),
              transitionsBuilder: (context,animation,animationTime, child)
              {
                // animation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
                return ScaleTransition(
                  alignment: Alignment.center,
                  scale: animation,
                  child: child,);
              },
              pageBuilder: (context,animation,animationTime){
                return ProductScreen(product: product,);
              }),
        );
      },
    );
  }
}
