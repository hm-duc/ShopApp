import 'package:flutter/material.dart';
import './screens/product_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.deepOrangeAccent,
        primarySwatch: Colors.purple,
        fontFamily: 'Lato'
      ),
      home: ProductOverviewScreen(),
    );
  }
}