import 'package:flutter/material.dart';
import 'package:paradise_beaches/screen/beach_detail_screen.dart';
import 'package:paradise_beaches/screen/beaches_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Paradise Beaches',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(235, 197, 121, 1.0),
        fontFamily: 'Arial',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BeachesScreen(),
        '/beach_detail': (context) => BeachDetailScreen(),
      },
    );
  }
}
