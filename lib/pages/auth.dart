import 'package:flutter/material.dart';
import 'dart:async';

import 'package:share_book/pages/products.dart';

class AuthPage extends StatelessWidget {
  AuthPage();

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
          title: Text("Login"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(),
                  RaisedButton(
                    child: Text("Login"),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, "/"),
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
