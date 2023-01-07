// @dart=2.9
import 'package:flutter/material.dart';
import 'view/splash.view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Project Tambong',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      debugShowCheckedModeBanner: false,
      home: Splashcreen(),
    );
  }
}
