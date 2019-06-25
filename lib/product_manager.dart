import 'package:flutter/material.dart';
// import 'package:share_book/product_control.dart';
import './products.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> _products;
  ProductManager(this._products);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Container(
      //   margin: EdgeInsets.fromLTRB(10, 10, 20, 20),
      //   child: ProductControl(),
      // ),
      Container(
        child: Container(
          child: Products(_products),
          height: 500.0,
        ),
        // height:
        //     500.0 //imporing products class and passing products to the construcxtor
      )
    ]);
  }
}
