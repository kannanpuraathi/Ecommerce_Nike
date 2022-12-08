import 'package:equatable/equatable.dart';

class Categories extends Equatable {
  final String name;
  final String imageUrl;

  const Categories({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
      ];

  static List<Categories> categories = [
    const Categories(
      name: 'Sneakers',
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/ebad848a-13b1-46d5-a85e-49b4b6a4953c/air-force-1-le-older-shoe-TDGHCN.png',
    ),
    const Categories(
      name: 'Mid-ankle Shoes',
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/19ec6cd8-84ff-4439-9e2f-1d633d7c1743/dunk-high-shoes-4TXtvT.png',
    ),
    const Categories(
      name: 'Air Shoes',
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/48218cfd-b69e-4f63-9f24-7dc0ce1b6f60/air-zoom-alphafly-next-2-road-racing-shoes-MRSlSl.png',
    ),
    const Categories(
      name: 'Sports Shoes',
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9f68d99d-756c-4691-af9a-f02eaca628f3/air-jordan-xxxvii-pf-basketball-shoes-FxrCGw.png',
    ),
  ];
}
