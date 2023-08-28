import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/Screens/home/components/body.dart';
import 'package:shop_app/constants.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // ignore: deprecated_member_use
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // ignore: deprecated_member_use
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }
}
