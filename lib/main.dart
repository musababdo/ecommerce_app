
import 'package:ecommerce/screens/details.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/products.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: isUserLoggedIn ? SplashScreen.id : login.id,
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Products.id: (context) => Products(),
        Details.id: (context) => Details(),
      },
    );
  }
}
