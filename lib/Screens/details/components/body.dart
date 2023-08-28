import 'package:flutter/material.dart';
import 'package:shop_app/Screens/details/components/add_to_cart.dart';
import 'package:shop_app/Screens/details/components/color_and_size.dart';
import 'package:shop_app/Screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_app/Screens/details/components/description.dart';
import 'package:shop_app/Screens/details/components/product_title_with_image.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.22,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  //height: 500,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      const CounterWithFavBtn(),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
