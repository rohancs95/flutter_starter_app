import 'package:flutter/material.dart';

class TextManager extends StatefulWidget {
  final String startingString; //because the class used above is immutable
  TextManager(
      {this.startingString =
          "String 1"}); //now to pass data to state widget //named parameter has to be in curly braces
  @override
  State<StatefulWidget> createState() {
    return _TextManagerState();
  }
}

class _TextManagerState extends State<TextManager> {
  String _text = "";
  final textFeildController = TextEditingController(); //text editing controller
  @override
  void initState() {
    _text = widget.startingString;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: TextField(
            // obscureText: true,//this is for password
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
            controller: textFeildController, //controller assigned to text field
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            textColor: Colors.black,
            onPressed: () {
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(textFeildController.text),
                    );
                  });
            },
            child: Text('Alert'),
          ),
        ),
        // Container(margin: EdgeInsets.all(10.0), child: Text(_text))
      ],
    );
  }
}
