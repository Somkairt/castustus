import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 113, 255, 117),
          title: Text("Menu  Castus"),
        ),
        body: Menu(),
      ),
    );
  }
}
