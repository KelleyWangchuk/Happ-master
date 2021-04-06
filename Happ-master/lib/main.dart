import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import './generateroute.dart';

void main() => runApp(
      // DevicePreview(
      MyApp(),
      //),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //builder: DevicePreview.appBuilder,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        // Define the default brightness and colors.

        primaryColor: Color(0xff2e75c7),
        accentColor: Colors.cyan[600],
        scaffoldBackgroundColor: Color(0xffe3ebf8),

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
