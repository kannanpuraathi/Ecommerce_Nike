
import 'package:flutter/material.dart';

import '../../Data/Model/model.dart';

class HeroCarouselCard extends StatelessWidget {
  final Advertisement advertisement;

  const HeroCarouselCard({Key? key, required this.advertisement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          child: Stack(
            children: <Widget>[
              Image.network(
                advertisement.imageUrl,
                fit: BoxFit.cover,
                width: 1000,
              ),
              // Positioned(
              //   bottom: 0.0,
              //   left: 0.0,
              //   right: 0.0,
              //   child: Container(
              //     decoration: const BoxDecoration(
              //       gradient: LinearGradient(colors: [
              //         Color.fromARGB(200, 0, 0, 0),
              //         Color.fromARGB(0, 0, 0, 0),
              //       ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              //     ),
              //     padding: const EdgeInsets.symmetric(
              //         vertical: 10, horizontal: 20.0),
              //     child: Text(
              //       category.name,
              //       style: GoogleFonts.raleway(
              //         color: Colors.white,
              //         fontSize: 20,
              //         fontWeight: FontWeight.normal,
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(50, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                ),
              )
            ],
          ),
        ),
      ),
      onTap: () {

      },
    );
  }
}
