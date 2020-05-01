import 'package:flutter/material.dart';
import 'package:petsapp/src/Pages/home-page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Pets',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage()
    );
  }
}
