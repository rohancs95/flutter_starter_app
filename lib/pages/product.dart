import 'package:flutter/material.dart';
import 'dart:async';

class Product extends StatelessWidget {
  Product({this.imageUrl, this.title});

  final String imageUrl;
  final String title;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //ovveride default action of back button in flutter
        print("back button pressed");
        Navigator.pop(context, false);
        return Future.value(
            false); //on will pop tells u to return a promise/Future
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Share book"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                child: Image.asset(this.imageUrl)),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(this.title),
                  ),
                  RaisedButton(
                    child: Text("Delete"),
                    onPressed: () => Navigator.pop(context, true),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
