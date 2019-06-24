import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addPoduct;
  ProductControl(this.addPoduct);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context)
          .primaryColor, //when you use theme in scaffold we get in any part of the app using context object
      onPressed: () {
        this.addPoduct();
      },
      child: Text('Press Me'),
    );
  }
}
