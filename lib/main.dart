import 'package:flutter/material.dart';
import './screens/home_page/home_page.dart';
import './screens/location_details/location_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turkeysim',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
        primaryTextTheme: TextTheme(
            headline6: TextStyle(fontSize: 32.0, color: Colors.black),
            headline1: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
            headline2: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
            bodyText1: TextStyle(fontSize: 20.0, color: Colors.black)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/location_details': (context) => LocationDetailsScreen()
      },
    );
  }
}
