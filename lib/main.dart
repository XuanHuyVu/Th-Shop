import 'package:flutter/material.dart';
import 'package:thshop/pages/CartPage.dart';
import 'package:thshop/pages/Homepage.dart';
import 'package:thshop/pages/ItemPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build( BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => const Homepage(),
        "cartPage": (context) => const CartPage(),
        "itemPage": (context) => const ItemPage()
      },
    );
  }
}