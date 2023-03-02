import 'package:flutter/material.dart';
import 'todo_item.dart';
import 'todo.dart';
import 'home.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'homepage.dart';
import 'routes.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
      home: Home(),
    );
  }
}

