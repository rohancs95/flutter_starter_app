import 'package:flutter/material.dart';

class ProductCreatePage extends StatelessWidget {
  ProductCreatePage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: Text("This is a modal"),
                );
              });
        },
        child: Text("Save"),
      ),
    );
  }
}
