import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
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
            ProductManager(
              startingProduct:
                  null, //now this a named constructor, helps you to define value according to the position and name
            ),
            // TextManager( //for practising
            //   startingString: "Rohan",
            // )
          ],
        )

        // backgroundColor: Colors.black,
        );
  }
}
