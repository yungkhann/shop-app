import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                icon: SvgPicture.asset("assets/icons/back.svg"),
                onPressed: () {}),
            actions: <Widget>[
              IconButton(
                icon: SvgPicture.asset("assets/icons/search.svg",
                    color: kTextColor),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/cart.svg",
                  color: kTextColor,
                ),
                onPressed: () {},
              ),
              SizedBox(width: kDefaultPadding / 2)
            ]),
        body: Body());
  }
}
