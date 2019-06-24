import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String>
      startingProduct; //because the class used above is immutable
  ProductManager(
      {this.startingProduct}); //now to pass data to state widget //named parameter has to be in curly braces
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  //to tell dart to which this state belongs to we specify an abstarct type. in <> brackets
  List<Map<String, String>> _products =
      []; // _ notations are only used to make things private or its only  convention
  @override
  //init state from outside
  void initState() {
    //lifecycle hook
    //no need to use set State because no data was rendered . so initState is used
    if (widget.startingProduct != null) {
      _products.add(widget
          .startingProduct); //this widget property is like the props in react to pass data don to state
    }
    super.initState();
  }
//deleting produt at a particular place

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
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
                _products
                    .add({'title': 'Book2', 'imageUrl': 'assets/book.jpg'});
              });
            },
            child: Text('Press Me'),
          )),
      Container(
        child: Container(
          child: Products(_products, deleteProduct: _deleteProduct),
          height: 500.0,
        ),
        // height:
        //     500.0 //imporing products class and passing products to the construcxtor
      )
    ]);
  }
}
