import 'package:Zenach/models/Product.dart';
import 'package:flutter/material.dart';
import "../../models/Product.dart";

class DetailsScreen extends StatelessWidget {
  final Product product;
  DetailsScreen({this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
      ),
    );  
  }
}
