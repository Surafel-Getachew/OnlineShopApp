import 'package:Zenach/constants.dart';
import 'package:Zenach/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import "../../models/Product.dart";
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  DetailsScreen({this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"), onPressed: null),
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"), onPressed: null),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
