import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context, product),
      body: Body(
        product: product,
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context, Product product) {
  return AppBar(
    backgroundColor: product.color,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      color: Colors.white,
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: () {}, icon: SvgPicture.asset('assets/icons/search.svg')),
      IconButton(
          onPressed: () {}, icon: SvgPicture.asset('assets/icons/cart.svg')),
      const SizedBox(width: kDefaultPadding / 4)
    ],
  );
}
