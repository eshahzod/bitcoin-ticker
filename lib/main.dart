import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.lightBlue,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.5,
            ),
            elevation: 0,
          ),
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}
