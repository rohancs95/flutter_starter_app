import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  AuthPage();

  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _username;
  String _password;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Username"),
                onChanged: (String value) {
                  setState(() {
                    this._username = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
                onChanged: (String value) {
                  setState(() {
                    this._password = value;
                  });
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              SwitchListTile(
                title: Text("Accept terms"),
                onChanged: (bool value) {
                  setState(() {
                    this._acceptTerms = value;
                  });
                },
                value: _acceptTerms,
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/products");
                },
              )
            ],
          ),
        ));
  }
}
