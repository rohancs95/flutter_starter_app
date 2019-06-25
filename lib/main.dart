import 'package:flutter/material.dart';

import './pages/products.dart';
import './pages/manage_products.dart';
import './pages/product.dart';
import './pages/auth.dart';
// import './text.dart';

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
  List<Map<String, dynamic>> _products =
      []; // _ notations are only used to make things private or its only  convention

//deleting produt at a particular place
  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      //setting state fuction will call the stateful widget to change the view
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber,
          brightness: Brightness.light,
          accentColor: Colors.blueAccent),
      home: AuthPage(),
      routes: {
        '/products': (BuildContext context) => ProductsPage(this._products),
        '/manage-products': (BuildContext context) =>
            ManageProductsPage(this._addProduct, this._deleteProduct),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split("/");
        if (pathElements[0] != "") {
          return null;
        } else if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => Product(
                    title: _products[index]['title'],
                    imageUrl: _products[index]['imageUrl'],
                  ));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ProductsPage(this._products));
      },
    );
    // constructor method class maeria dart imported above....
    //this widget will a part of every app you build...its root widget...
  }
}
