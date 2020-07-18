import 'package:flutter/material.dart';
import "../../../constants.dart";
import 'catagories.dart';
import '../../../models/Product.dart';
import "item_card.dart";
import '../../details/details_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Catagories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: products[index]),
                        ),
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
