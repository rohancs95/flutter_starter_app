import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductCreatePage(this.addProduct, this.deleteProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue;
  String _description;
  double _price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            onChanged: (String value) {
              setState(() {
                this._titleValue = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: "Description"),
            onChanged: (String value) {
              setState(() {
                this._description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Price"),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                this._price = double.parse(value);
              });
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            child: Text("Save"),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': this._titleValue,
                'decription': this._description,
                'price': this._price,
                'imageUrl': 'assets/book.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, "/products");
            },
          )
        ],
      ),
    );
  }
}
