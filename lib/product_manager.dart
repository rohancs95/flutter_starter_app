import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct; //because the class used above is immutable
  ProductManager(
      {this.startingProduct =
          "Book 2"}); //now to pass data to state widget //named parameter has to be in curly braces
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  //to tell dart to which this state belongs to we specify an abstarct type. in <> brackets
  List<String> _products =
      []; // _ notations are only used to make things private or its only  convention
  @override
  //init state from outside
  void initState() {
    //lifecycle hook
    //no need to use set State because no data was rendered . so initState is used
    _products.add(widget
        .startingProduct); //this widget property is like the props in react to pass data don to state
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.fromLTRB(10, 10, 20, 20),
          child: RaisedButton(
            color: Theme.of(context)
                .primaryColor, //when you use theme in scaffold we get in any part of the app using context object
            onPressed: () {
              setState(() {
                //setting state fuction will call the stateful widget to change the view
                _products.add("Book 2");
              });
            },
            child: Text('Press Me'),
          )),
      Products(
          _products), //imporing products class and passing products to the construcxtor
    ]);
  }
}
