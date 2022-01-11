import 'package:coffe/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drink Order App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity
    ),
      home: HomeScreen()
    );
  }
}

