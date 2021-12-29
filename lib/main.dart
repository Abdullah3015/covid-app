import 'package:covid_app/home_screen.dart';
import 'package:covid_app/news.dart';

import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue
      ),
      home: Home_page(),
    );
  }
}