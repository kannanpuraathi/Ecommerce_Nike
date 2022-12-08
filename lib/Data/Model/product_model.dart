import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final double mrp;
  final bool isTrending;
  final List size;

  const Product({required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.mrp,
    required this.isTrending,
    required this.size});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isTrending, size];
  static List<Product> products = [
    const Product(
      name: 'Air Jordan 1 Retro High OG',
      category: 'Mid-ankle Shoes',
      imageUrl:
      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0ecb80c3-d1c9-455e-9d0e-e162c72b914a/air-jordan-1-retro-high-og-shoes-1zJ53f.png',
      price: 15995,
      mrp: 20999,
      isTrending: true,
      size: [7, 8, 9, 10, 11, 12],),
    const Product(
      name: 'Air Jordan XXXVII PF',
      category: 'Sports Shoes',
      imageUrl:
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9f68d99d-756c-4691-af9a-f02eaca628f3/air-jordan-xxxvii-pf-basketball-shoes-FxrCGw.png',
      price: 17295,
      mrp: 19999,
      isTrending: false,
      size: [7, 8, 9, 10,11],
    ),
    const Product(
      name: 'Nike Air Force 1',
      category: 'Sneakers',
      imageUrl:
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f66a08b9-211c-43fe-a0cc-d04a732bdc63/air-force-1-07-shoe-tnM0q0.png',
      price: 7877,
      mrp: 9999,
      isTrending: true,
      size: [6, 7, 8, 9, 10,11,12],),
    const Product(
      name: 'Nike Air Force 1',
      category: 'Sneakers',
      imageUrl:
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f66a08b9-211c-43fe-a0cc-d04a732bdc63/air-force-1-07-shoe-tnM0q0.png',
      price: 7877,
      mrp: 8999,
      isTrending: true,
      size: [7, 8, 9, 10],),
    const Product(
      name: 'Nike Air Max Alpha Trainer 5',
      category: 'Air Shoes',
      imageUrl:
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/c3ede2ea-bd3d-4d66-aabc-89bcaf6b05f8/air-max-alpha-trainer-5-training-shoes-x8Jzj6.png',
      price: 7495,
      mrp: 11999,
      isTrending: false,
      size: [7, 9, 10],),
    const Product(
      name: 'Nike Air Max 90 ',
      category: 'Air Shoes',
      imageUrl:
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/ad2fc72e-b912-43b6-b344-567d3ffb947d/custom-air-max-90-unlocked-by-you.png',
      price: 14995,
      mrp: 19999,
      isTrending: true,
      size: [7, 8, 10],),
  ];
}
