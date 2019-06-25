import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text("Manage Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/manage-products');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Share book'),
        ),
        body: Column(
          children: <Widget>[
            ProductManager(this.products),
            // TextManager( //for practising
            //   startingString: "Rohan",
            // )
          ],
        )

        // backgroundColor: Colors.black,
        );
  }
}
