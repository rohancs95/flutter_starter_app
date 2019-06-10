import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  //stateless wiget doesnt work with data
  // This widget is the root of your application.
  @override
  //build is amethod defined by stateless widget class and marked to be overridden as @override is used
  //here wudget means the return type of the method
  State<StatefulWidget> createState() {
    return _MyAppState(); //instantiate the my app state which makes it an object and returns the widget that was created by the state
  }
}

//_ nortation before class names makes them private to a dart file i.e you will not be able to import it somewhere else
class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Share book'),
          ),
          body: ProductManager("Book 1")
          // backgroundColor: Colors.black,
          ),
    );
    // constructor method class maeria dart imported above....
    //this widget will a part of every app you build...its root widget...
  }
}
