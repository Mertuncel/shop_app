import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: product.color),
              child:
                  Hero(tag: "${product.id}", child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          const Text(
            " \$234",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
