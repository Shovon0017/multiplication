import 'package:flutter/material.dart';
import 'package:multiplication/view/multiplication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Multiplication Range App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Multiplication(),
    );
  }
}