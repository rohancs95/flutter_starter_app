import 'package:flutter/material.dart';
// import 'dart:async';

import './product_create.dart';
import './product_list.dart';

class ManageProductsPage extends StatelessWidget {
  ManageProductsPage(this.addProduct, this.deleteProduct);

  final Function addProduct;
  final Function deleteProduct;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Choose'),
                automaticallyImplyLeading: false,
              ),
              ListTile(
                title: Text("Products"),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/products');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Manage Products"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "My Products",
                icon: Icon(Icons.create),
              ),
              Tab(
                icon: Icon(Icons.list),
                text: "Manage",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreatePage(this.addProduct, this.deleteProduct),
            ProductListPage()
          ],
        ),
      ),
    );
  }
}
