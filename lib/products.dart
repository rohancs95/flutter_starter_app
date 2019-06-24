import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>>
      products; //here final means that this code cannot be editing from within the class and can only be set from outside
  final Function deleteProduct;

  Products(this.products,
      {this.deleteProduct}); //initializaing the constructor with products parameter this keyword different in js

  Widget _buildProductItem(BuildContext context,
      int index) //context contains info regarding the theme and color of the app
  {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () => {
                      Navigator.pushNamed<bool>(
                              context, "/product/" + index.toString())
                          .then((res) {
                        if (res == true) {
                          deleteProduct(index);
                        } else {
                          print(res);
                        }
                      })
                    },
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? ListView.builder(
            itemBuilder:
                _buildProductItem, //without paranthesis just to pass a refeence to the function
            itemCount: products.length,
            // scrollDirection: Axis.horizontal
            // shrinkWrap: true,
          )
        : Center(child: Text("No products found press add to add products"));
    // margin: EdgeInsets.fromLTRB(10, 10, 20, 20));
  }
}
