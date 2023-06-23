import 'package:flutter/material.dart';

import 'package:shop_app/models/Product.dart';

import 'package:shop_app/constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Aristrocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Price\n"),
                TextSpan(
                  text: "\$${product.price}",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ])),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                  child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(product.image, fit: BoxFit.fill)))
            ],
          )
        ],
      ),
    );
  }
}
