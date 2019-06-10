import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String>
      products; //here final means that this code cannot be editing from within the class and can only be set from outside
  Products(
      this.products); //initializaing the constructor with products parameter this keyword different in js

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((el) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/book.jpg'),
                    Text(el),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
