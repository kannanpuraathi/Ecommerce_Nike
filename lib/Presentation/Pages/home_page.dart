import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_app/Data/Model/model.dart';
import 'package:ecom_app/Presentation/Widgets/category_carousel.dart';
import 'package:flutter/material.dart';
import '../Widgets/landscape_carousel.dart';
import '../Widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 8,
          ),
          const SectionTitle(
            title: 'What\'s New',
            size: 25,
          ),
          SizedBox(
            height: 270,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                autoPlay: true,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Advertisement.categories
                  .map((category) => HeroCarouselCard(advertisement: category))
                  .toList(),
            ),
          ),
          SizedBox(
            // color: Colors.yellow,
            height: 100,
            width: double.infinity,
            child: Image.asset(
              'Assets/nikebanner.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SectionTitle(
                title: 'Trending',
                size: 25,
              ),
            ],
          ),
          LandscapeCarousel(
            products: Product.products
                .where((product) => product.isTrending)
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SectionTitle(
                title: 'Categories',
                size: 25,
              ),
            ],
          ),
         CategoryCarousel(categories:Categories.categories.toList(),),
        ],
      ),
    );
  }
}
