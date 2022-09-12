import 'package:flutter/material.dart';
import 'package:flutter_tutorial/utils/home.dart';
import 'package:flutter_tutorial/utils/loading.dart';
import 'package:flutter_tutorial/utils/world_location.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => WorldLocation(),
      },
    );
  }
}
