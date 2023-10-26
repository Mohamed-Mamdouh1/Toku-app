import 'package:flutter/material.dart';
import 'package:toku_app/screens/homePage.dart';


void main() {
  runApp(Toku_app());
}

class Toku_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


