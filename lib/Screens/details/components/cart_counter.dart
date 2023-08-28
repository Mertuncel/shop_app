import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 0) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.titleLarge),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            })
      ],
    );
  }

  Container buildOutlineButton({IconData? icon, Function()? press}) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black)),
      child: IconButton(
        onPressed: press,
        icon: Icon(icon),
      ),
    );
  }
}
